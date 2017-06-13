cask 'blackvue-viewer' do
  version '1.09,74331'
  sha256 'a36ee16aa51185229b5dd81a2931d0dad6ef8ba37ce9aeeb2d31fa30f2de07ad'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  app 'BlackVue Viewer.app'
end
