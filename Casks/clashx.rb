cask 'clashx' do
  version '1.6.5'
  sha256 '30976fca1762f028f7a7bff080932f867b06d9ad86bb5bbcf0060f5338ed2f0f'

  url "https://github.com/yichengchen/clashX/releases/download/#{version}/ClashX.dmg"
  appcast 'https://github.com/yichengchen/clashX/releases.atom'
  name 'ClashX'
  homepage 'https://github.com/yichengchen/clashX'

  app 'ClashX.app'
end
