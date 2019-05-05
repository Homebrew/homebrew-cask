cask 'rightfont' do
  version '5.5.1'
  sha256 'c19ac377c09c477d96ec37a583e44b7ba826cc5eff59e44be40ad9c8c4e55a1f'

  url 'https://rightfontapp.com/update/rightfont.zip'
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app "RightFont #{version.major}.app"
end
