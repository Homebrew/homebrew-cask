cask 'gargoyle' do
  version '2011.1'
  sha256 '4e830ad3feec78d623ce5c13ce14f440f9769d302ac46604afc4b9785baa038c'

  url "https://github.com/garglk/garglk/releases/download/stable-#{version}/gargoyle-#{version}-mac.dmg"
  appcast 'https://github.com/garglk/garglk/releases.atom',
          checkpoint: '856917364d871777ed008dee26d61fa23a131d5deed11202b338014102e93cf8'
  name 'Gargoyle'
  homepage 'https://github.com/garglk/garglk'
  license :oss

  app 'Gargoyle.app'
end
