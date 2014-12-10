cask :v1 => 'aliwangwang' do
  version :latest
  sha256 :no_check

  url 'http://update.labs.etao.com/macww-nosandbox/versions/lastest'
  appcast 'http://update.labs.etao.com/macww/updates.xml'
  homepage 'http://wangwang.taobao.com'
  license :unknown    # todo: improve this machine-generated value

  app 'AliWangwang.app'
end
