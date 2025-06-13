cask "hackolade" do
  arch arm: "ARM64"

  version "8.2.2"
  sha256 arm:   "d2c3ece8b7e4f1f1d4a9f3c8f2cd8941b0e68ed50e1c59217f86765dd0f19d78",
         intel: "a8b62aad0d1ba36acd086878a6259074581fb04350e34a1c03877dc6c1a12d0d"

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
