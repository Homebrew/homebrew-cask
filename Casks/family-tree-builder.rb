cask "family-tree-builder" do
  version "8.2.0.8516"
  sha256 "babd0029c007932e0339a97e080608a06ffbc64f77c49879a2b8fd0a93f956c5"

  # mhcache-myheritage.netdna-ssl.com/FP/FamilyTreeBuilder/ was verified as official when first introduced to the cask
  url "https://mhcache-myheritage.netdna-ssl.com/FP/FamilyTreeBuilder/family_tree_builder_#{version.split(".").last}.dmg"
  appcast "https://www.myheritage.com/FP/FamilyTreeBuilder/appcast.xml"
  name "Family Tree Builder"
  homepage "https://www.myheritage.com/"

  depends_on macos: "<= :mojave"

  app "Family Tree Builder.app"
end
