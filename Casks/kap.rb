cask "kap" do
  url_arch = Hardware::CPU.intel? ? "" : "-arm64"
  version "3.5.1"

  if Hardware::CPU.intel?
    sha256 "8e93d7fbe30e9c2b4bda0078cca5e8f94ba5c1e9ca0b1b991054d9f2227cbf1b"
  else
    sha256 "7e5583479fd882b29d9cd699353c9f4ba97234f572ac7a7c36a06970c58cfdb9"
  end

  url "https://github.com/wulkano/kap/releases/download/v#{version.major_minor_patch}/Kap-#{version}#{url_arch}.dmg",
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
