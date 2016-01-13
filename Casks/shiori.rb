cask 'shiori' do
  version '1.0.2'
  sha256 'c832edc2762fdaadc80bfe042ee6f7bd128955e3d7b27bdc5baf5806a0c8a719'

  url "https://aki-null.net/shiori/release/Shiori_#{version}.zip"
  appcast 'https://aki-null.net/shiori/appcast.xml',
          :checkpoint => 'd53c02727eb8c654e19b51c205103d3c4f445da33a2a4045a4c8cbf40736f3bf'
  name 'Shiori'
  homepage 'https://aki-null.net/shiori/'
  license :gratis

  app 'Shiori.app'
end
