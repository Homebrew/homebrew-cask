cask 'prudent' do
  version '22.0.43.3'
  sha256 '6169cad58f68b4115c768812a76ae015496da3ff197161e63d382891c04f7746'

  # github.com/PrudentMe/main/ was verified as official when first introduced to the cask
  url "https://github.com/PrudentMe/main/releases/download/#{version.major}/Prudent.zip"
  appcast 'https://github.com/PrudentMe/main/releases.atom',
          must_contain: version.major
  name 'Prudent'
  homepage 'https://prudent.me/'

  app 'Prudent.app'
end
