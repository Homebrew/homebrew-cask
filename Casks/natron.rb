cask 'natron' do
  version '2.3.15'
  sha256 '7afe4ab02f2538b695e6d36f26fade558a9625fd4d228f587cff38dd5478b804'

  # github.com/NatronGitHub/Natron/ was verified as official when first introduced to the cask
  url "https://github.com/NatronGitHub/Natron/releases/download/v#{version}/Natron-#{version}-OSX-64.dmg"
  appcast 'https://github.com/NatronGitHub/Natron/releases.atom'
  name 'Natron'
  homepage 'https://NatronGitHub.github.io/'

  app 'Natron.app'
end
