cask 'qownnotes' do
  version '17.03.8,b2844-163619'
  sha256 'c25478d048b49b59ac3b2867a4c54ff37cc21867ad18fddc7da70e6c614cc025'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '90b5f1f9f9fabf278caafe8191da2e0a7b96e0c4e010993ab23e8ed378f9db98'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
