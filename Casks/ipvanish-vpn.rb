cask 'ipvanish-vpn' do
  version '3.0.2_442'
  sha256 'c1aabda78cdd2d02bbe4fdda22ac2f4c787392d70326c81d6dc74fdfb52278df'

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version}.zip"
  appcast 'https://www.ipvanish.com/software/osx/updates.xml',
          checkpoint: '7d73708aaa5bb44de71aeb4b25e6b9e92a37267ef2eb0730cf1d34b538dc0543'
  name 'IPVanish'
  homepage 'https://www.ipvanish.com/'

  app 'IPVanish VPN.app'
end
