cask 'gitbox' do
  version '1.6.2'
  sha256 '181ac55515221bf07c9994f25a11e962a9057e4249600b4d95424bcb6bb5c6d7'

  # d1oa71y4zxyi0a.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1oa71y4zxyi0a.cloudfront.net/gitbox-#{version}-ml.zip"
  appcast 'http://gitboxapp.com/updates.xml',
          checkpoint: 'd22fec338fe94f98556990084e8f11ab1c4378e8d4b6b2430544a857adc6215e'
  name 'Gitbox'
  homepage 'http://gitboxapp.com/'

  app 'Gitbox.app'

  zap delete: '~/Library/Preferences/com.oleganza.gitbox.plist'
end
