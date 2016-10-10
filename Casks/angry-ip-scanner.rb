cask 'angry-ip-scanner' do
  version '3.4.2'
  sha256 'df331b6bcc463f2caae8c4d892f473e2a4a37a8970cc8e38a776735d6feaa140'

  # github.com/angryziber/ipscan was verified as official when first introduced to the cask
  url "https://github.com/angryziber/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryziber/ipscan/releases.atom',
          checkpoint: '43039a9b361014d6b347f070687e4f815e7f56ed2bf40b48d793344117cb4eb7'
  name 'Angry IP Scanner'
  homepage 'http://angryip.org'

  app 'Angry IP Scanner.app'
end
