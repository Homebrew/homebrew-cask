cask 'stack-stack' do
  version '2.7.3'
  sha256 '4e52945fcdc1b7f3ff5e72245493074dcebd47cd00b6cc8431f62f68c9cfdade'

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
