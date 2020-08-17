cask "securesafe" do
  version "2.7.2"
  sha256 "79cefe64d6c4d6c501496e9b333a9bc785fe8d7a64b473df2216c4e58396d59b"

  url "https://www.securesafe.com/downloads/SecureSafe_#{version}.pkg"
  appcast "https://www.securesafe.com/en/downloads/"
  name "SecureSafe"
  homepage "https://www.securesafe.com/"

  depends_on macos: ">= :sierra"

  pkg "SecureSafe_#{version}.pkg"

  uninstall pkgutil: [
    "com.dswiss.securesafe.pkg.sync",
    "com.github.osxfuse.pkg.Core",
  ]
end
