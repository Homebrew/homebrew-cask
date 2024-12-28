cask "hackolade" do
  arch arm: "ARM64"

  version "7.9.4"
  sha256 arm:   "8b23124fc46094398fdf6b42660d3348f942e8a1cb27f5e1e144e01d58d3cc4c",
         intel: "5ec1cd1a7d58ce05fa11eb0a1a620e27f5c066101d3e6df22dbb9e881879f6a2"

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
