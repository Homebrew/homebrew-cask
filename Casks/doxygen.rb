cask 'doxygen' do
  version '1.8.16'
  sha256 'b95c91f85346ccd5ad1847697867acc8663e33460976319f544d824ec9d35278'

  url "http://doxygen.nl/files/Doxygen-#{version}.dmg"
  appcast 'http://www.doxygen.nl/download.html'
  name 'Doxygen'
  homepage 'http://www.doxygen.nl/'

  app 'Doxygen.app'
end
