cask "browseros" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.47.18"

  on_macos do
    sha256 arm:   "04a60fe448265ab6a3e7b3873a8ded5af31de0d40ddf60cb026f6cd5da445c3c",
           intel: "00d5abc6c967e2c2799a42c452ee0677f09aafe1058cd13a269e5793cc12e9a0"

    depends_on macos: :monterey

    app "BrowserOS.app"

    zap trash: [
      "~/Library/Application Support/BrowserOS",
      "~/Library/Caches/BrowserOS",
      "~/Library/Preferences/com.browseros.BrowserOS.plist",
    ]
  end
  on_linux do
    sha256 "8f5ec44734714f1ff439a2ad4a3a74d835e2d77d917f3f6ab1ee6e23b6aebbbb"

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
