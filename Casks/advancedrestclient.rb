cask "advancedrestclient" do
  version "16.0.0"
  sha256 "837087a5358bc106c31b562d2b24565571805aa4f99fe742ee7e1baf978354c4"

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
