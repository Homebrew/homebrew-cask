cask 'stack-stack' do
  version '2.13.0'
  sha256 'e324a48e7c73791977c832583a5fc6229b7b9907597cc27d5a490a1215660e63'

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
