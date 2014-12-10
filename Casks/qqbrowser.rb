cask :v1 => 'qqbrowser' do
  version '2.3.2160'
  sha256 '6e0a3cf5d889f733cc5a4b38c8441bb32201ad1634c038d599be6e0864a65d14'

  url "http://dldir1.qq.com/invc/tt/QQBrowser_#{version.sub(%r{^.*\.},'')}.dmg"
  homepage 'http://browser.qq.com/mac/'
  license :unknown    # todo: improve this machine-generated value

  app 'QQBrowser.app'
end
