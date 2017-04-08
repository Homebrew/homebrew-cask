cask 'blocs' do
  version '2.3.1'
  sha256 '1cd1d8175d944400b2180b9100543307b2e85f49066b477e24921a231ebadfa7'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml",
          checkpoint: '061ab429695d3970897cf2102e7b48008c3eb3d35463a9a64a22685710adc47f'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
