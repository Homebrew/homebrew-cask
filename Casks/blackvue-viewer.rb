cask 'blackvue-viewer' do
  version '1.10,74331'
  sha256 '138e6db6dfa737fe4f00497d5296eb5464e888181979e83511d218ba0b5106e6'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  app 'BlackVue Viewer.app'
end
