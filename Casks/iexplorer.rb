cask :v1 => 'iexplorer' do
  version '3.6.6.0'
  sha256 '023816dcce85458754cecbd935e0bee9638868936a71795a8956687c0d5dcfae'

  url "http://cdn.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'http://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => 'd5a2ea8f6072e499a2cbed60dbae5952c7bc5a7ea3fa6fc79549c0033e77f84c'
  homepage 'http://www.macroplant.com/iexplorer/'
  license :freemium

  app 'iExplorer.app'
end
