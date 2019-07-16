cask 'rightfont' do
  version '5.5.4'
  sha256 '3b1aa8ec6440590f5da0174575d1ae818291d722267dc25d35a32283db31b225'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
