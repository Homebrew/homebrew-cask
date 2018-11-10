cask 'clashx' do
  version '1.6.6'
  sha256 '35e3264a339fae29e59783b8e15349d356242a9006a891da35cd677f63b80119'

  url "https://github.com/yichengchen/clashX/releases/download/#{version}/ClashX.dmg"
  appcast 'https://github.com/yichengchen/clashX/releases.atom'
  name 'ClashX'
  homepage 'https://github.com/yichengchen/clashX'

  app 'ClashX.app'
end
