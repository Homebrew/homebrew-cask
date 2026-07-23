cask "macdisplaymagic" do
  version "0.2.1"
  sha256 "108b38512cda1f1b43fc7f6906eece0a795a3fdfa8393aaab01dd1ab625bc9fa"

  url "https://github.com/bricolageTheory/macDisplayMagic/releases/download/v#{version}/macDisplayMagic.zip"
  name "macDisplayMagic"
  desc "Display-aware macOS application and web tab zoom manager"
  homepage "https://github.com/bricolageTheory/macDisplayMagic"

  depends_on macos: ">= :ventura"

  app "macDisplayMagic.app"

  zap trash: [
    "~/Library/Preferences/com.nicklee.macDisplayMagic.plist",
  ]
end
