cask 'family-tree-builder' do
  version '8.2.0,474'
  sha256 '852a30b1ae53ec656fb8045c9b830f71ed7da91667bbf68f421f3311c4c0a742'

  # mhcache-myheritage.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://mhcache-myheritage.netdna-ssl.com/FP/FamilyTreeBuilder/family_tree_builder_#{version.major}#{version.after_comma}.dmg"
  name 'Family Tree Builder'
  homepage 'https://www.myheritage.com/'

  app 'Family Tree Builder.app'
end
