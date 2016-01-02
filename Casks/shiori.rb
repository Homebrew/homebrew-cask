cask 'shiori' do
  version '1.0.2'
  sha256 'c832edc2762fdaadc80bfe042ee6f7bd128955e3d7b27bdc5baf5806a0c8a719'

  url "https://aki-null.net/shiori/release/Shiori_#{version}.zip"
  appcast 'https://aki-null.net/shiori/appcast.xml',
          :sha256 => '244668dde7c677ddaaccc55c997874e13d3c8de5213c5e0810eeacd6fdcc713e'
  name 'Shiori'
  homepage 'https://aki-null.net/shiori/'
  license :gratis

  app 'Shiori.app'
end
