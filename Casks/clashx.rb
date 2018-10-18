cask 'clashx' do
  version '1.5.5'
  sha256 '94e078d9c0bc6835cf0039a4f5d59b1444eef5edb5c72972485d431879f62052'

  url "https://github.com/yichengchen/clashX/releases/download/#{version}/ClashX.dmg"
  appcast 'https://github.com/yichengchen/clashX/releases.atom'
  name 'ClashX'
  homepage 'https://github.com/yichengchen/clashX'

  app 'ClashX.app'
end
