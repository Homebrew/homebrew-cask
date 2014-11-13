cask :v1 => 'bathyscaphe' do
  version '2.4.2'
  sha256 'fe7b8deed01a75b09cce9d4bd1f06a60106adfd831dfbe07782bf19fb1a67bd1'

  url "http://dl.sourceforge.jp/bathyscaphe/61374/BathyScaphe-#{version.gsub('.','')}-v648.dmg"
  homepage 'http://bathyscaphe.sourceforge.jp/'
  license :oss

  app 'BathyScaphe.app'
end
