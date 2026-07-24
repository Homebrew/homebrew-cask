cask "macdisplaymagic" do
  version "0.2.1"
  sha256 "88b7e77aef95b0d505559acd729dfaf8941c228b55de929c6c283f59a2972716"

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
