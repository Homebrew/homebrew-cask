cask 'brave' do
  version '0.22.21'
  sha256 '157f4eedfa1e5ea4f48fe2b046c830e432b69e1ef0c5450f137a86a5ac4b9fe1'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '595a5bbc22ff4a037ce24ce274613f726080c48e3aaa9ffc62e18f2cbf9e7b0b'
  name 'Brave'
  homepage 'https://brave.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
