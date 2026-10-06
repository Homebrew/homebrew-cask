cask "browseros" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.51.0"
  sha256 arm:          "7f1249d6e646fd179a9bb4efc21ad650310972f58384ac4f48e299ae8c71937a",
         intel:        "c6b9ef84077ef078512552d10604f1ebd831baf3f22dc35d4932f8c9fe38fbd2",
         x86_64_linux: "b586df72083c046e2ea2d1cc1b6463325ed4cb0c31975d48e09cc14215e3e7bf"

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
