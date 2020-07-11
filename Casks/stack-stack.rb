cask 'stack-stack' do
  version '3.9.3'
  sha256 '5fbc8e12ff5f1548fdcfef4a042c958349e56f012c8ef9f0e884cf38abd4bf4e'

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
