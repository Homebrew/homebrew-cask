cask "browseros" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.50.5"
  sha256 arm:          "853ac4a86ea8551b7e1091e24b6f90c5a6f21ad502a257334885363839cab70c",
         intel:        "05fed20583c73bffd12ce50d187a7bea0fb63f52df220878cfb118adeb906191",
         x86_64_linux: "a9f807fa190e66d3c55bc29f5c74f084ecab1abf9def4ea9ef8a3bbaae467089"

  on_macos do
    depends_on macos: :ventura

    app "BrowserOS.app"

    zap trash: [
      "~/Library/Application Support/BrowserOS",
      "~/Library/Caches/BrowserOS",
      "~/Library/Preferences/com.browseros.BrowserOS.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "BrowserOS_v#{version.csv.first}_#{arch}.AppImage", target: "BrowserOS.AppImage"
  end

  url "https://github.com/browseros-ai/BrowserOS/releases/download/v#{version.csv.second || version.csv.first}/BrowserOS_v#{version.csv.first}_#{arch}.#{url_end}"
  name "BrowserOS"
  desc "Open-source agentic browser"
  homepage "https://www.browseros.com/"

  # Upstream doesn't provide a macOS file with every release, so we have to
  # check multiple GitHub releases instead of only the "latest" one
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/BrowserOS[._-]v?(\d+(?:\.\d+)*)[._-]#{arch}\.dmg}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          (match[2] == match[1]) ? match[1] : "#{match[2]},#{match[1]}"
        end
      end.flatten
    end
  end
end
