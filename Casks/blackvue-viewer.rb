cask 'blackvue-viewer' do
  version '1.07,74331'
  sha256 '64cb8d56e6b56cebd7f38f7e8704d87b5a230a25afe90a94a2887947e1b5594e'

  url "https://www.blackvue.com/download/blackvue-mac-viewer-cloud/?wpdmdl=#{version.after_comma}"
  name 'BlackVue Viewer'
  homepage 'https://www.blackvue.com/'

  app 'BlackVue Viewer.app'
end
