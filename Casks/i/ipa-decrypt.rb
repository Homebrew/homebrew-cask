cask "ipa-decrypt" do
  version "1.0.9"
  sha256 "1ef0b06bf61a7b25c6bb3373c85ac45f3589a5964c520c3d51dc874a54b2c8ff"

  url "https://github.com/Re13orn/IPA-Decrypt/releases/download/v#{version}/IPA-Decrypt-macOS-#{version}-arm64.dmg"
  name "IPA 解密"
  desc "App Store and TestFlight IPA downloader and FairPlay decryptor"
  homepage "https://github.com/Re13orn/IPA-Decrypt"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "IPA 解密.app"

  zap trash: [
    "~/Library/Application Support/IPADecryptMac",
    "~/Library/Caches/local.ipadecrypt.mac",
    "~/Library/Preferences/local.ipadecrypt.mac.plist",
    "~/Library/Preferences/local.ipadecrypt.readmepreview.plist",
    "~/Library/Saved Application State/local.ipadecrypt.mac.savedState",
  ]
end
