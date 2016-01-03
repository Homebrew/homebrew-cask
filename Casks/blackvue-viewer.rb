cask 'blackvue-viewer' do
  version :latest
  sha256 'b46b1ee52e5a9d44c6c78a00466d5912d0574d29278ca925db285b1686c47507'

  url 'http://www.blackvue.com/?wpdmdl=4041'
  name 'BlackVue Viewer'
  homepage 'http://blackvue.com'
  license :closed

  app "BlackVue Viewer_#{version}.app"
end
