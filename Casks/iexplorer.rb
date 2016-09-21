cask 'iexplorer' do
  version '4.0.9.0'
  sha256 '820f5ce8a148b695182f803233f57ffaf1bc0d0ad3ffc39bc66133ab2288193c'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast "https://www.macroplant.com/iexplorer/ie#{version.major}-appcast.xml",
          checkpoint: 'd7e96ee12b0266c60f2ba0d47b83448a8e39bc1580d95f429668d5c9f0a180de'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
