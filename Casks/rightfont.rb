cask 'rightfont' do
  version '5.8.1'
  sha256 '4081b1d47916ce96a95220bf8473251817c8646f58711d636d47073c14babb9f'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
