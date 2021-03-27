cask "securesafe" do
  version "2.9.1"
  sha256 "ba2f8c5efa5489b2f6c60b6fd913de6de05388818ff24d3e330ca266d6f33bdf"

  url "https://www.dswiss.com/userdata/downloads/SecureSafe_#{version}.pkg",
      verified: "dswiss.com/userdata/downloads/"
  appcast "https://www.securesafe.com/en/downloads/"
  name "SecureSafe"
  desc "Highly secure online storage with password manager"
  homepage "https://www.securesafe.com/"

  depends_on macos: ">= :sierra"

  pkg "SecureSafe_#{version}.pkg"

  uninstall pkgutil: [
    "com.dswiss.securesafe.pkg.sync",
    "com.github.osxfuse.pkg.Core",
  ]
end
