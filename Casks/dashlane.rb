cask 'dashlane' do
  version :latest
  sha256 :no_check

  url 'https://www.dashlane.com/directdownload?platform=mac'
  appcast 'https://ws1.dashlane.com/5/binaries/query?target=archive&format=xml&currentSoftwareVersion=6.0.0&platform=server_osx&os=OS_X_10_13_6'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  app 'Dashlane.app'
end
