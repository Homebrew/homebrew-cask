cask "advancedrestclient" do
  version "17.0.7"
  sha256 "efd5eb3f6d3ce4ad09b764284187fcb3c3907d0ea2e06a1f9c84fc6c3f108953"

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
