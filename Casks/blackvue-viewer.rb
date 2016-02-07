cask 'blackvue-viewer' do
  version '1.31_20150406'
  sha256 '633a795e12b0e4c73f14b2a1232cc561839ed251a1e00b87c5fe1309b37ceb66'

  url "http://www.blackvue.com/en/common/downloadHIT.asp?downfile=BlackVue%20Viewer_#{version.major_minor}.app.zip&path=board&idx=2052"
  name 'BlackVue Viewer'
  homepage 'http://blackvue.com'
  license :closed

  app "BlackVue Viewer_#{version}.app"
end
