cask 'babeledit' do
  version '2.7.0'
  sha256 'eed54865625e41f3ebfcacaf1222f38f20d752251520444733d18addd5608656'

  url "https://www.codeandweb.com/download/babeledit/#{version}/BabelEdit-#{version}.dmg"
  appcast 'https://www.codeandweb.com/babeledit/download',
          must_contain: version
  name 'BabelEdit'
  homepage 'https://www.codeandweb.com/babeledit'

  app 'BabelEdit.app'
end
