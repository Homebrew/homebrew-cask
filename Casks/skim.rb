cask :v1 => 'skim' do
  version '1.4.13'
  sha256 'bba918cf7a5f54ec1725399d5107ae1c861dd551000f78cf837af2347eff45b0'

  url "http://downloads.sourceforge.net/project/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'http://skim-app.sourceforge.net/skim.xml',
          :sha256 => '4aa953c1e52056552bcc8fa1609fcd80fe83fac66861de456760a5f7c8fe6f43'
  name 'Skim'
  homepage 'http://skim-app.sourceforge.net/'
  license :bsd

  app 'Skim.app'
  binary 'Skim.app/Contents/SharedSupport/displayline'
  binary 'Skim.app/Contents/SharedSupport/skimnotes'
  binary 'Skim.app/Contents/SharedSupport/skimpdf'

  zap :delete => '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
