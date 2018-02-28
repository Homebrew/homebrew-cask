cask 'nitrokey' do
  version '1.2'
  sha256 'f137979318b91915cadbb8e52fbea3c529b3dfdfd807a974b54b06e3582575be'

  # github.com was verified as official when first introduced to the cask
  url 'https://github.com/Nitrokey/nitrokey-app/releases/download/v1.2/nitrokey-app-v1.2.dmg'
  name 'Nitrokey'
  homepage 'https://www.nitrokey.com/download/macos'

  app 'Nitrokey App v1.2.app'
end
