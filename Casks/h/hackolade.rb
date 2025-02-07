cask "hackolade" do
  arch arm: "ARM64"

  version "8.0.0"
  sha256 arm:   "1f510f2e90259745ebe028616cb623783bad010bc6b0809d9177f5137418ddf2",
         intel: "380c5a6ce43d1efab7d03f3618d9ebb0b45cc7444fa5fa4cdd9eb5b729009248"

  url "https://hackolade.s3.amazonaws.com/previous/v#{version}/Hackolade-mac#{arch}-setup-signed.pkg",
      verified: "hackolade.s3.amazonaws.com/"
  name "Hackolade"
  desc "Polyglot data modelling software"
  homepage "https://hackolade.com/"

  livecheck do
    url "https://hackolade.com/download.html"
    regex(/Current\sversion:\sv?(\d+(?:\.\d+)+)/i)
  end

  pkg "Hackolade-mac#{arch}-setup-signed.pkg"

  uninstall pkgutil: "com.hackolade.pkg.Hackolade"

  zap trash: [
    "~/Library/Application Support/Hackolade",
    "~/Library/Preferences/com.electron.hackolade.plist",
    "~/Library/Saved Application State/com.electron.hackolade.savedState",
  ]
end
