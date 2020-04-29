cask 'stack-stack' do
  version '2.11.0'
  sha256 'd8addd413cc6a86c7421b3119476107ff582756adf3f691b31e60294daf372ef'

  # s3.eu-central-1.amazonaws.com/stack-v1 was verified as official when first introduced to the cask
  url "https://s3.eu-central-1.amazonaws.com/stack-v1/builds/prod/Stack-#{version}.dmg"
  appcast 'https://s3.eu-central-1.amazonaws.com/stack-v1'
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
