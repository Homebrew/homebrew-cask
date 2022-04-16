cask "advancedrestclient" do
  version "17.0.9"
  sha256 "817d54ee18e970fce4b16ead1422069e3c1f69c5f0edec73e01bc0fd3a210034"

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
