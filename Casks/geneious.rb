cask 'geneious' do
  version '10.1.3'
  sha256 'a9d8545c0ee4d43d7d20f691686c35133b67854269ae611ce17552108a2530c1'

  url "https://assets.geneious.com/installers/geneious/release/Geneious_mac64_#{version.dots_to_underscores}_with_jre.dmg"
  name 'Geneious'
  homepage 'https://www.geneious.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Geneious.app'
end
