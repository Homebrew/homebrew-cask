cask 'gargoyle' do
  version '2011.1'
  sha256 '4e830ad3feec78d623ce5c13ce14f440f9769d302ac46604afc4b9785baa038c'

  url "https://github.com/garglk/garglk/releases/download/stable-#{version}/gargoyle-#{version}-mac.dmg"
  appcast 'https://github.com/garglk/garglk/releases.atom'
  name 'Gargoyle'
  homepage 'https://github.com/garglk/garglk'

  app 'Gargoyle.app'
end
