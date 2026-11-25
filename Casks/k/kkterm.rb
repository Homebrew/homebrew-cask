cask "kkterm" do
  os macos: "macos-universal.dmg", linux: "linux-x86_64.AppImage"

  version "3000.0.29"
  sha256 arm:          "6d06295be809be61779049604077b9be691492aba49976f3e6c5815a0815e12e",
         intel:        "6d06295be809be61779049604077b9be691492aba49976f3e6c5815a0815e12e",
         x86_64_linux: "6f2769543bc7fd1764ea02ea0f2a38b375cb9d7df329fd6b903f2dec168acba8"

  on_macos do
    app "KKTerm.app"

    zap trash: [
      "~/Library/Application Support/com.kkterm.app",
      "~/Library/Caches/com.kkterm.app",
      "~/Library/Preferences/com.kkterm.app.plist",
      "~/Library/Saved Application State/com.kkterm.app.savedState",
      "~/Library/WebKit/com.kkterm.app",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "kkterm-#{version}-linux-x86_64.AppImage", target: "kkterm.AppImage"

    zap trash: "~/.local/share/com.kkterm.app"
  end

  url "https://github.com/ryantsai/KKTerm/releases/download/v#{version}/kkterm-#{version}-#{os}"
  name "KKTerm"
  desc "Local-first administration workspace for terminals, SSH, and SFTP"
  homepage "https://github.com/ryantsai/KKTerm"

  livecheck do
    url :url
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]
        next unless release["assets"]&.any? { |asset| asset["name"]&.end_with?(os) }

        match = release["name"]&.match(regex)
        next if match.blank?

        match[1]
      end.flatten
    end
  end

  auto_updates true
end
