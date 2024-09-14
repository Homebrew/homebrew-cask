cask "hackolade" do
  arch arm: "ARM64"

  version "7.7.8"
  sha256 arm:   "0a8b2160f29be82d16a34f0532612d4bb430d5af28c1c6f2377901bc71c38151",
         intel: "759fe6fb17e64398cd8267ccfb89f0470ad41c238ba5e43f829546e80a2c58e1"

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
