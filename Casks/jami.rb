cask 'jami' do
  version '20200506.0941'
  sha256 '2e91c2868ff05fa9209b60c5b00a36017b55c78da319758aa15a9e9b1be74d8c'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
