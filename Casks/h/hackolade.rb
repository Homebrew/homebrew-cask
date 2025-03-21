cask "hackolade" do
  arch arm: "ARM64"

  version "8.0.6"
  sha256 arm:   "63ce29b42e3752e693c834b5079668a3ab787b37018c36fa9db0a329e6e05b10",
         intel: "e1da8191c4d2d17b16c2c8fe472ada100f9daac325b5ed1b0623da8d80f5f7ef"

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
