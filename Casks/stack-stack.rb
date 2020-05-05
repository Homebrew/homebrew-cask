cask 'stack-stack' do
  version '3.0.0'
  sha256 '2bcc8053c63fe22cc340e5922068f641bfec931a9effbfc9aaddfa7e31abc926'

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
