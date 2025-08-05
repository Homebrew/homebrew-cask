cask "katrain" do
  version "1.14.0"
  sha256 "38cfe45fd4440983d3cbf4ca1305fa977c8479a16f6696bd22742ad451fa4cd7"

  on_arm do
    depends_on formula: "katago"
  end

  url "https://github.com/sanderland/katrain/releases/download/v#{version}/KaTrainOSX.dmg"
  name "KaTrain"
  desc "Tool for analyzing games and playing go with AI feedback from KataGo"
  homepage "https://github.com/sanderland/katrain"

  # Most recent release doesn't provide a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release. NOTE: We should be
  # able to remove this next release when upstream provides a file for macOS again.
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/KaTrainOSX\.(?:dmg|pkg)$}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  app "KaTrain.app"

  zap trash: "~/.katrain"

  caveats do
    requires_rosetta
  end
end
