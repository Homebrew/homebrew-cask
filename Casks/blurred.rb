cask 'blurred' do
  version '1.1.0'
  sha256 '81414e9e9b094039f49453060200eef3e13ac98c8a3e3d61beefd53fa3d0f7fb'

  url "https://github.com/dwarvesf/blurred/releases/download/v#{version}/Blurred.#{version}.dmg"
  appcast 'https://github.com/dwarvesf/blurred/releases.atom'
  name 'Blurred'
  homepage 'https://github.com/dwarvesf/blurred/'

  depends_on macos: '>= :catalina'

  app 'Blurred.app'

  uninstall quit:      'foundation.dwarves.blurred',
            launchctl: 'foundation.dwarves.blurredlaunche'

  zap trash: [
               '~/Library/Application Scripts/foundation.dwarves.blurred',
               '~/Library/Application Scripts/foundation.dwarves.blurredlauncher',
               '~/Library/Containers/foundation.dwarves.blurred',
               '~/Library/Containers/foundation.dwarves.blurredlauncher',
             ]
end
