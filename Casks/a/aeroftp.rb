cask "aeroftp" do
  version "2.5.1"
  sha256 "73470234520a5a6f582f8ac4622987513d1e79a4a39e7cf58aa7a10007473369"

  url "https://github.com/axpnet/aeroftp/releases/download/v#{version}/AeroFTP_#{version}_aarch64.dmg"
  name "AeroFTP"
  desc "Multi-protocol file manager with AI assistant, cloud sync, and encryption"
  homepage "https://github.com/axpnet/aeroftp"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64

  app "AeroFTP.app"

  zap trash: [
    "~/.config/aeroftp",
    "~/Library/Application Support/com.aeroftp.AeroFTP",
    "~/Library/Caches/com.aeroftp.AeroFTP",
    "~/Library/Preferences/com.aeroftp.AeroFTP.plist",
    "~/Library/Saved Application State/com.aeroftp.AeroFTP.savedState",
    "~/Library/WebKit/com.aeroftp.AeroFTP",
  ]
end
