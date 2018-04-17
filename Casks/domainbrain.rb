cask 'domainbrain' do
  version '2.0.1'
  sha256 '3e016dcc863a4abb029f65dfb9a79573dafc5d84136d483d65874b2d0f64bd9d'

  # s3.amazonaws.com/joeworkman_downloads was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/joeworkman_downloads/DomainBrain.zip'
  appcast "https://domainbrainapp.com/appcast_v#{version.major}.xml",
          checkpoint: 'e38e9b967c88762e504ef9afaedece6e944d77ad0680ad2703aa00443fe20f1e'
  name 'DomainBrain'
  homepage 'https://domainbrainapp.com/'

  auto_updates true

  app 'DomainBrain.app'

  zap trash: [
               '~/Library/Application Support/DomainBrain',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.onebuttonmouse.domainbrain2.sfl*',
               '~/Library/Preferences/com.onebuttonmouse.DomainBrain2.plist',
             ]
end
