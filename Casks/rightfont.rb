cask 'rightfont' do
  version '5.5.5'
  sha256 '0a4a9df7bf63470888cda82552c889bc64567adb1420865afbf9b0739564840e'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
