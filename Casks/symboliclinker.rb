cask :v1 => 'symboliclinker' do
  version '2.0v3'
  sha256 'f04f13e215bc084a47424f1768d759b748663ec593de1ec0d5709d1777b2b297'

  url "https://github.com/nickzman/symboliclinker/releases/download/v#{version}/SymbolicLinker#{version}.dmg"
  appcast 'https://github.com/nickzman/symboliclinker/releases.atom'
  name 'SymbolicLinker'
  homepage 'https://github.com/nickzman/symboliclinker'
  license :bsd

  service 'SymbolicLinker.service'
end
