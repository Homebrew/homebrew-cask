cask "securesafe" do
  version "2.10.0"
  sha256 "4c09de831aaba8ceccc594f9ccaaf3cca5c1afaa84e87b55b7d4e4f8e824fe61"

  url "https://www.dswiss.com/userdata/downloads/securesafe-#{version}.pkg",
      verified: "dswiss.com/userdata/downloads/"
  name "SecureSafe"
  desc "Highly secure online storage with password manager"
  homepage "https://www.securesafe.com/"

  livecheck do
    url "https://www.securesafe.com/en/downloads"
    strategy :page_match
    regex(/securesafe-(\d+(?:\.\d+)*)\.pkg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "securesafe-#{version}.pkg"

  uninstall pkgutil: [
    "com.dswiss.securesafe.pkg.sync",
    "com.github.osxfuse.pkg.Core",
  ]
end
