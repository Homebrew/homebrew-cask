cask "advancedrestclient" do
  version "16.0.1"
  sha256 "fa60bb7e382adb474d6f85afbebcb596875ad5e23061052f4b8a094fdfa0b967"

  url "https://github.com/advanced-rest-client/arc-electron/releases/download/v#{version}/arc-macos.dmg"
  name "Advanced REST Client"
  desc "API testing tool"
  homepage "https://github.com/advanced-rest-client/arc-electron"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "AdvancedRestClient.app"

  zap trash: [
    "~/Library/Application Support/advanced-rest-client",
    "~/Library/Logs/AdvancedRestClient",
  ]
end
