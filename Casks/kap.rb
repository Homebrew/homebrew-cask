cask "kap" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.5.3"

  if Hardware::CPU.intel?
    sha256 "d5c4acb633b34db23c0115363254d806ad5ce7ecb052fc6936deb13d65cc7fd5"
  else
    sha256 "a47eb3fda8732ecc3da92ddb4c7bb449e5f84c8186c09b498570495c156be98c"
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
