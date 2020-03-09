cask 'changes' do
  version '1.7.3'
  sha256 '64fd2d6af3f3a85fb6d172d5e9bce15ae07d4b94de5b2360181445227bcc9c1a'

  # bitbq_changes.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://bitbq_changes.s3.amazonaws.com/changes-#{version}.zip"
  appcast 'https://bitbq_changes.s3.amazonaws.com/changes-production.xml'
  name 'Changes'
  homepage 'https://martiancraft.com/products/changes.html'

  app 'Changes.app'
  binary 'Changes.app/Contents/Resources/chdiff'

  zap trash: [
               '~/Library/Preferences/com.bitbq.Changes.plist',
               '~/Library/Application Support/Changes',
               '~/Library/Caches/com.bitbq.Changes',
             ]
end
