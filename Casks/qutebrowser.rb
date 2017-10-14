cask 'qutebrowser' do
  version '1.0.1'
  sha256 '6f012524d1d66d1201a024b4971dca5fe8f93693617670dba081b0e467a2f779'

  # github.com/qutebrowser/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom',
          checkpoint: '750270f95b68b1b5f699d03250d7eea3be544ecf21686d0526734465aa4e8c87'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'
end
