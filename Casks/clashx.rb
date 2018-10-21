cask 'clashx' do
  version '1.6.1'
  sha256 '8b02bb3207390c9b8b3f0b9cbc75e041b2a7f7c16e91a8951f22586081f851f0'

  url "https://github.com/yichengchen/clashX/releases/download/#{version}/ClashX.dmg"
  appcast 'https://github.com/yichengchen/clashX/releases.atom'
  name 'ClashX'
  homepage 'https://github.com/yichengchen/clashX'

  app 'ClashX.app'
end
