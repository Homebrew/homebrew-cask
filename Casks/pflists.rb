cask :v1 => 'pflists' do
  version '1.0.1'
  sha256 '024cd972503df8b7b01602e092a9b900b6758b33ba040860fd46af3bb53f2856'

  url "http://www.hanynet.com/pflists-#{version}.zip"
  homepage 'http://www.hanynet.com/pflists/index.html'
  license :oss

  app 'PFLists.app'
end
