cask 'iexplorer' do
  version '4.2.5'
  sha256 '126d8d5a91a2fa99bf62c7316679f08d6177e1337f6bc3994f09c3b7a174fa5b'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
