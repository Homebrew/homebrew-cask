cask 'sitebulb' do
  version '3.4'
  sha256 'c3d2bfcaac54eb6bfba856a20ba857bfc3174b801f5f70b0283f442ef4dab156'

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast 'https://sitebulb.com/download/'
  name 'Sitebulb'
  homepage 'https://sitebulb.com/'

  app 'Sitebulb.app'
end
