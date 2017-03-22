cask 'iexplorer' do
  version '4.0.11'
  sha256 'b9d222d53cdcc53f0137140d48ab01ff782860c9872397c7462d23f6dbedcb8b'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
