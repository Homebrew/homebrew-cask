cask 'brave' do
  version '0.8.3dev'
  sha256 '9ac6a76942c63943516e8d86679dede52062a08a9fb75aba255aae8c5669708c'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'be6b34637b897ae14ff35a94dbd6a49fea9a9b3dffe3d46cab61de7413b36a37'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'
end
