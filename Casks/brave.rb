cask 'brave' do
  version '0.12.14dev'
  sha256 'd98370990a24307d68a568fcddc2535dcca8dc41d6a4603ee9e05834033ae9a2'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '4f147828870a2d71767f572621308d937e64ab2feed96f8301b48e0719ccbeb2'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
