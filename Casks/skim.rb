cask :v1 => 'skim' do
  version '1.4.12'
  sha256 '4984de6749589cda6a5c9d28a2a3541ba58407b7758afe3bffdbb43900831ba2'

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
