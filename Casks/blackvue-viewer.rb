cask 'blackvue-viewer' do
  version '1.05,74331'
  sha256 'a5c1c51481ad78c29875c57f39140d3ecc9822ef264146357bbbba4492ab7b79'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  app 'BlackVue Viewer.app'
end
