cask "macdisplaymagic" do
  version "0.2.1"
  sha256 "6d90e35348bb0bb77159ec44df027f88fab348ce3872d98e65d478f1494e7a4a"

  url "https://github.com/bricolageTheory/macDisplayMagic/releases/download/v#{version}/macDisplayMagic.zip"
  name "macDisplayMagic"
  desc "Display-aware application zoom manager"
  homepage "https://github.com/bricolageTheory/macDisplayMagic"

  depends_on macos: :ventura

  app "macDisplayMagic.app"

  zap trash: [
    "~/Library/Application Support/macDisplayMagic",
    "~/Library/Preferences/com.coolnick.macDisplayMagic.plist",
  ]
end
