cask 'dashlane' do
  version '6.1844.0'
  sha256 '7f198bec7f4d8f811088e6cdfa1589537ca3ee9415b45f1e2bbef1d906294a67'

  url 'https://www.dashlane.com/directdownload?platform=mac'
  appcast 'https://ws1.dashlane.com/5/binaries/query?target=archive&format=xml&currentSoftwareVersion=6.0.0&platform=server_osx&os=OS_X_10_13_6'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  app 'Dashlane.app'
end
