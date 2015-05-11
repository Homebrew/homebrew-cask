cask :v1 => 'blackvue-viewer' do
  version '1.30_20150324'
  sha256 'f78f76f2e799cc3f4faf0254b270e5c4a8d59a499a09332f4b11af338f521bba'

  url "http://blackvue.com/en/common/downloadHIT.asp?downfile=BlackVue%20Viewer_#{version.sub(%r{^(\d+)\.(\d+)_.*},'\1.\2')}.zip&path=board&idx=1431"
  name 'BlackVue Viewer'
  homepage 'http://blackvue.com'
  license :closed

  app "BlackVue Viewer_#{version}.app"
end
