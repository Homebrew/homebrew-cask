cask 'symboliclinker' do
  version '2.1'
  sha256 '89c25ece463416ab9e66e090c1c2b0f1b9eb7a1f41e278e3ac20f6b2f6424d93'

  url "https://github.com/nickzman/symboliclinker/releases/download/v#{version}/SymbolicLinker#{version}.dmg"
  appcast 'https://github.com/nickzman/symboliclinker/releases.atom',
          checkpoint: 'c7ec74fb114ce3be79f7e71def4f02ada28e5485387696ffadd65631a4817537'
  name 'SymbolicLinker'
  homepage 'https://github.com/nickzman/symboliclinker'

  service 'SymbolicLinker.service'
end
