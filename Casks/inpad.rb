cask 'inpad' do
  version '0.1.0'
  sha256 'a66a0be66bc98d31f36232ab9b5ea5a47fdb644e4234673d8ccc26bd637841f1'

  # github.com/CarbonStack/Inpad was verified as official when first introduced to the cask
  url "https://github.com/CarbonStack/Inpad/releases/download/v#{version}/Inpad-#{version}.dmg"
  appcast 'https://github.com/CarbonStack/Inpad/releases.atom',
          checkpoint: '11613d811f66156c887ef949f34618423fb986af906143ef700dbd848e0172f7'
  name 'Inpad'
  homepage 'https://carbonstack.github.io/Inpad/'

  app 'Inpad.app'
end
