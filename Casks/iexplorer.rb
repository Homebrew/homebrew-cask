cask 'iexplorer' do
  version '4.0.7.0'
  sha256 'db1f56890bd8e8b2e0ac1181a2dfbbb252bbd2f32124fe5c1c2c2639448a8059'

  url "https://cdn.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast "https://www.macroplant.com/iexplorer/ie#{version.major}-appcast.xml",
          checkpoint: '5970d2b26bec98baca4a2642e8091f1a5325f7b0ee14614040a522d618a965b5'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
