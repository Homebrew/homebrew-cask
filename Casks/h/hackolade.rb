cask "hackolade" do
  arch arm: "ARM64"

  version "8.3.1"
  sha256 arm:   "fb65cb3e0a74e80d25976fe92a9dbe0d294b28ecc7632f18f19aeefc3a24a1a9",
         intel: "1d03b8866ae8c54125e2c0902e27748f41b16b091defc1a876f94d130941a5ae"

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
