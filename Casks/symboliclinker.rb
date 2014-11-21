cask :v1 => 'symboliclinker' do
  version '2.0v3'
  sha256 'f04f13e215bc084a47424f1768d759b748663ec593de1ec0d5709d1777b2b297'

  url "http://www.macupdate.com/download/10433/SymbolicLinker#{version}.dmg"
  homepage 'http://www.macupdate.com/app/mac/10433/symboliclinker'
  license :gratis

  service "SymbolicLinker.service"
end
