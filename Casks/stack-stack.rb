cask 'stack-stack' do
  version '3.3.0'
  sha256 'bc5315af0d0c63aa4b4996978653e96c81d961e91565ed4aae2aefd0ab651ecd'

  # stack-v1.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://stack-v1.s3.amazonaws.com/builds/prod/Stack-#{version}.dmg"
  appcast 'https://stack-v1.s3.amazonaws.com/'
  name 'Stack'
  homepage 'https://stackers.app/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Stack.app'

  uninstall quit:       'com.stack.io',
            login_item: 'Stack'

  zap trash: [
               '~/Library/Application Support/Stack',
               '~/Library/Preferences/com.stack.io.plist',
             ]
end
