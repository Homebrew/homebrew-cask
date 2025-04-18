cask "hackolade" do
  arch arm: "ARM64"

  version "8.1.3"
  sha256 arm:   "7591c678c93d1407a4ef8320f73b2c3ae423238947aa7afbe33757dee1dd4673",
         intel: "ee5c0a6203f4b3bf9bb5495755f045d3cfa2e3075d2068d856b1f35574b2520c"

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
