cask 'symboliclinker' do
  version '2.0v3'
  sha256 'f04f13e215bc084a47424f1768d759b748663ec593de1ec0d5709d1777b2b297'

  url "https://github.com/nickzman/symboliclinker/releases/download/v#{version}/SymbolicLinker#{version}.dmg"
  appcast 'https://github.com/nickzman/symboliclinker/releases.atom',
          checkpoint: 'bcd2b4693b166b4a9e6ed00b6b293f4f8d11796b4c8d9db77cdcd1439b50685b'
  name 'SymbolicLinker'
  homepage 'https://github.com/nickzman/symboliclinker'
  license :bsd

  service 'SymbolicLinker.service'
end
