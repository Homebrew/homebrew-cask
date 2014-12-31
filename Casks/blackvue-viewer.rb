cask :v1 => 'blackvue-viewer' do
  version '1.25'
  sha256 '80135f4d537a5ce67ed465a58b29e4701c6f2672c7b012ab6f6bea2c4d884fcc'

  url "http://blackvue.com/en/common/downloadHIT.asp?downfile=BlackVue%20Viewer_#{version}.zip&path=board&idx=1431&sort=0"
  homepage 'http://blackvue.com'
  license :closed

  app "BlackVue Viewer_#{version}.app"
end
