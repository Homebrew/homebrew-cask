cask 'domainbrain' do
  version '2.0.1'
  sha256 '3e016dcc863a4abb029f65dfb9a79573dafc5d84136d483d65874b2d0f64bd9d'

  # jwurl.net was verified as official when first introduced to the cask
  url 'http://jwurl.net/ADZjle'
  name 'DomainBrain'
  homepage 'http://domainbrainapp.com'
  license :freemium

  app 'DomainBrain.app'

  zap delete: [
                '~/Library/Application Support/DomainBrain',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.onebuttonmouse.domainbrain2.sfl',
                '~/Library/Preferences/com.onebuttonmouse.DomainBrain2.plist',
              ]
end
