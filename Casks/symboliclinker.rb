cask 'symboliclinker' do
  version '2.1.1'
  sha256 '58ed5a7992686f75981e4fe79678a9b9350267c487dd9cb4dc875ab6c87cfe08'

  url "https://github.com/nickzman/symboliclinker/releases/download/v#{version}/SymbolicLinker#{version}.dmg"
  appcast 'https://github.com/nickzman/symboliclinker/releases.atom',
          checkpoint: '593561fa2c0960a96517b10ec187d691240dbb326abe63d17b39ea3859629d52'
  name 'SymbolicLinker'
  homepage 'https://github.com/nickzman/symboliclinker'

  service 'SymbolicLinker.service'
end
