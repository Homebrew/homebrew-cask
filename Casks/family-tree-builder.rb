cask 'family-tree-builder' do
  version '7.0.2,155'
  sha256 '67e346320510ee1e0be3ad5d10b3a68e68f29c63693e67470160be4da9140623'

  # mhcache-myheritage.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://mhcache-myheritage.netdna-ssl.com/FP/FamilyTreeBuilder/family_tree_builder_#{version.major}#{version.after_comma}.dmg"
  name 'Family Tree Builder'
  homepage 'https://www.myheritage.com/'

  app 'Family Tree Builder.app'
end
