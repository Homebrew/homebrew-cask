cask "hackolade" do
  arch arm: "ARM64"

  version "8.2.3"
  sha256 arm:   "24eec5b9952fb4a64e482fe615ed35f95350827ff25ad0e2b1ed5c3ac8dfd2a6",
         intel: "2879c41ce48aba68977b43a46d0b0385a516e17ef07e234f0c0cdfe9939e8cd9"

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
