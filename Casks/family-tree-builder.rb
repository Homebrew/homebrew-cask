cask "family-tree-builder" do
  version "8.2.0.8521"
  sha256 "37d553af39747800a9f8b2bfd745ffae2ab521a5894364e377a8be496f36063e"

  # mhcache-myheritage.netdna-ssl.com/FP/FamilyTreeBuilder/ was verified as official when first introduced to the cask
  url "https://mhcache-myheritage.netdna-ssl.com/FP/FamilyTreeBuilder/family_tree_builder_#{version.split(".").last}.dmg"
  name "MyHeritage Family Tree Builder"
  desc "MyHeritage Family Tree Builder is a free family tree product that allows you to easily create your family tree. Family Tree Builder by MyHeritage supports 36 languages and is absolutely free. It features Smart Matching (a fun way to discover new relatives) and provides excellent support for photos, including face recognition technology."
  homepage "https://www.myheritage.com/"

  depends_on macos: "<= :catalina"

  app "Family Tree Builder.app"
end
