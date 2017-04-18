cask 'blackvue-viewer' do
  version '1.06,74331'
  sha256 'a4a751e0528e904de3cf3347f97f9f6f396a3c053919c443ce6472500a0f6b78'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  app 'BlackVue Viewer.app'
end
