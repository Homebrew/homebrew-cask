cask "publish-or-perish" do
  version "7.25.2877"
  sha256 "9c28a7c81f122c9941b1ab901b3b2e4cd4befd18159d24979bc634ae2243c83f"

  url "https://harzing.com/download/PoP7Mac.pkg"
  appcast "https://harzing.com/resources/publish-or-perish/os-x"
  name "Harzing Publish or Perish"
  homepage "https://harzing.com/resources/publish-or-perish"

  depends_on macos: ">= :high_sierra"

  pkg "PoP7Mac.pkg"

  uninstall pkgutil: "com.tarma.popmac.pkg"
end
