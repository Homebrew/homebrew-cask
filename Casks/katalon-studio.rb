cask 'katalon-studio' do
  version '6.2.2'
  sha256 '28588997abe8cc8c40c8848b174e49c5ef30524f6b35bae41d69f6a05a6a0387'

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast 'https://github.com/katalon-studio/katalon-studio/releases.atom'
  name 'Katalon Studio'
  homepage 'https://www.katalon.com/download/'

  app 'Katalon Studio.app'
end
