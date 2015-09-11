cask :v1 => 'iexplorer' do
  version '3.7.7.0'
  sha256 '2c626a0cd473bb69f7ad7ab17830b992336f173641a0931acb1a3ba331b293b8'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          :sha256 => '04cd9d71597efdf1d05a7e4f92f33ae7c1f26e7ad3f4f537c4ca64365c0e0e55'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'iExplorer.app'
end
