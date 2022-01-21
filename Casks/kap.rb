cask "kap" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.5.2"

  if Hardware::CPU.intel?
    sha256 "573577cc63c2b0e88315051e2047145d9b720a6bb1cb49c95af3ddbacbd274c2"
  else
    sha256 "5a5e26a6dcaf2e8fbe2255a61a0f0739b333e31193fb0c77686c519c06a604e0"
  end

  url "https://github.com/wulkano/kap/releases/download/v#{version.major_minor_patch}/Kap-#{version}-#{arch}.dmg",
      verified: "github.com/wulkano/kap/"
  name "Kap"
  desc "Open-source screen recorder built with web technology"
  homepage "https://getkap.co/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Kap.app"

  zap trash: [
    "~/Library/Application Support/Kap",
    "~/Library/Caches/com.wulkano.kap",
    "~/Library/Caches/com.wulkano.kap.ShipIt",
    "~/Library/Cookies/com.wulkano.kap.binarycookies",
    "~/Library/Preferences/com.wulkano.kap.helper.plist",
    "~/Library/Preferences/com.wulkano.kap.plist",
    "~/Library/Saved Application State/com.wulkano.kap.savedState",
  ]
end
