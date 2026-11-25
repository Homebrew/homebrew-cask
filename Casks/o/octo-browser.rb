cask "octo-browser" do
  arch arm: "_arm64"

  version "3.2.7"
  sha256 arm:   "dc052eadb1740da055743f0b04fc7320bbee6c65e3e43c64f39c4afd9be9de1e",
         intel: "94c4eb179b2890a7dce34231aed860e98661955c1247efc82cf1d0faa0c92c19"

  url "https://binaries.octobrowser.org/releases/installer/Octo_Browser_#{version}b_mac#{arch}.dmg"
  name "Octo Browser"
  desc "Anti-detect browser for managing multiple profiles"
  homepage "https://octobrowser.net/"

  # The API rejects requests that don't use the app's own user agent
  livecheck do
    url "https://app.octobrowser.net/api/v2/components/release?os=mac&arch=arm64",
        user_agent: "octo/mac-arm64-15.0/#{version}b/0/"
    strategy :json do |json|
      json["data"]&.find { |item| item["name"] == "updater_content" }&.dig("version")
    end
  end

  auto_updates true
  depends_on :macos

  app "Octo Browser.app"

  zap trash: [
    "~/.Octo Browser",
    "~/Library/Caches/net.octobrowser.client",
    "~/Library/HTTPStorages/net.octobrowser.client.binarycookies",
    "~/Library/Preferences/net.octobrowser.client.plist",
    "~/Library/Preferences/net.octobrowser.shared.plist",
    "~/Library/WebKit/net.octobrowser.client",
  ]
end
