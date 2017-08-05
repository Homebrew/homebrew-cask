cask 'devrantron' do
  version '1.2.0'
  sha256 'cf01835b96fea5fb127525d0477a47f0c6de5420c3dddb1b1bb62513585143ad'

  # github.com/tahnik/devRantron was verified as official when first introduced to the cask
  url "https://github.com/tahnik/devRantron/releases/download/v#{version}/devrantron-#{version}.dmg"
  appcast 'https://github.com/tahnik/devRantron/releases.atom',
          checkpoint: '868ebf87e2efd29cb26a25c998002e625e8d190a96c80da256598a35bd3bd5e3'
  name 'devRantron'
  homepage 'https://devrantron.firebaseapp.com/'

  app 'devRantron.app'

  zap delete: [
                '~/Library/Application Support/devrantron',
                '~/Library/Saved Application State/de.zerotask.theclassic.savedState',
              ]
end
