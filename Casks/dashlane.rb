cask 'dashlane' do
  version '6.1844.0'
  sha256 '24b8cfca4698cdbbf53309b3abe09a5308f888fc0e46096b53d596c2c30a4b3b'

  url 'https://www.dashlane.com/directdownload?platform=mac'
  appcast 'https://ws1.dashlane.com/5/binaries/query?target=archive&format=xml&currentSoftwareVersion=6.0.0&platform=server_osx&os=OS_X_10_13_6'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  app 'Dashlane.app'
end
