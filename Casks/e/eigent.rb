cask "eigent" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "1.0.2"

  on_macos do
    sha256 arm:   "558507ed6a73cb6fc0273112f85693ad82c8c9da33e4d3ee7a024ca562eb6b60",
           intel: "1067422bc0f33c5d5afb40f5dca29225da17a2a6418365800fe8caa539db74d0"

    depends_on macos: :big_sur

    app "Eigent.app"

    zap trash: [
      "~/.eigent",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.eigent.app.sfl*",
      "~/Library/Application Support/eigent",
      "~/Library/Logs/eigent",
      "~/Library/Preferences/com.eigent.app.plist",
    ]
  end
  on_linux do
    sha256 "5cd04cb7b0527e759811db766ff08503f5f2a2444334c176aa5ca02775abe0b7"

    depends_on arch: :x86_64

    app_image "Eigent-#{version}.AppImage", target: "Eigent.AppImage"
  end

  url "https://github.com/eigent-ai/eigent/releases/download/v#{version}/Eigent-#{version}#{url_end}",
      verified: "github.com/eigent-ai/eigent/"
  name "Eigent"
  desc "Desktop AI agent"
  homepage "https://www.eigent.ai/"

  # Not every GitHub release provides a file for each architecture, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^Eigent[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end
end
