cask "publish-or-perish" do
  version "7.26.2899"
  sha256 "574e5f7bfe6a9f237876f81621945c7aedfaca98c743668b8cc68bf3803f5838"

  url "https://harzing.com/download/PoP7Mac.pkg"
  appcast "https://harzing.com/resources/publish-or-perish/os-x"
  name "Harzing Publish or Perish"
  homepage "https://harzing.com/resources/publish-or-perish"

  depends_on macos: ">= :high_sierra"

  pkg "PoP7Mac.pkg"

  uninstall pkgutil: "com.tarma.popmac.pkg"
end
