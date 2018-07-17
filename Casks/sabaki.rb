cask 'sabaki' do
  version '0.35.0'
  sha256 '0174a3da32a0896c4296ed57a3b423d411984efa6e6abc771ac0f9641001e84f'

  # github.com/SabakiHQ/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/SabakiHQ/Sabaki/releases.atom'
  name 'Sabaki'
  homepage 'http://sabaki.yichuanshen.de/'

  app 'Sabaki.app'
end
