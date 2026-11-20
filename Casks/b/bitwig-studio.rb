cask "bitwig-studio" do
  version "6.1.7"
  sha256 "a02c24432010b64ab2408e5798dc5ec4c38a8f32ddb0859a1e2d808831dbda00"

  url "https://www.bitwig.com/dl/Bitwig%20Studio/#{version}/installer_mac"
  name "Bitwig Studio"
  desc "Digital audio workstation"
  homepage "https://www.bitwig.com/"

  livecheck do
    url "https://www.bitwig.com/download/"
    regex(/Bitwig\s*Studio\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "Bitwig Studio.app"

  zap trash: [
    "~/Library/Application Support/Bitwig",
    "~/Library/Caches/Bitwig",
    "~/Library/Logs/Bitwig",
    "~/Library/Preferences/com.bitwig.studio.plist",
  ]
end
