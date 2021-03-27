cask "family-tree-builder" do
  version "8.2.0.8521"
  sha256 "37d553af39747800a9f8b2bfd745ffae2ab521a5894364e377a8be496f36063e"

  url "https://mhcache-myheritage.netdna-ssl.com/FP/FamilyTreeBuilder/family_tree_builder_#{version.split(".").last}.dmg",
      verified: "mhcache-myheritage.netdna-ssl.com/FP/FamilyTreeBuilder/"
  name "MyHeritage Family Tree Builder"
  desc "Family tree creator"
  homepage "https://www.myheritage.com/family-tree-builder"

  depends_on macos: "<= :catalina"

  app "Family Tree Builder.app"
end
