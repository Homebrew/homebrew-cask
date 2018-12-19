cask 'jwzlyrics' do
  version '1.17'
  sha256 'a4013e402dbfaa815489e261921930a4d1060b51190732c0b04418ca3e08af14'

  url "https://www.jwz.org/jwzlyrics/jwzlyrics-#{version}.zip"
  appcast 'https://www.jwz.org/jwzlyrics/updates.xml'
  name 'jwzlyrics'
  homepage 'https://www.jwz.org/jwzlyrics/'

  app 'jwzlyrics.app'
end
