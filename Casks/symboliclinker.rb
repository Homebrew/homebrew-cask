cask :v1 => 'symboliclinker' do
  version '2.0v3'
  sha256 'f04f13e215bc084a47424f1768d759b748663ec593de1ec0d5709d1777b2b297'

  url "http://seiryu.home.comcast.net/~seiryu/software/SymbolicLinker#{version}.dmg"
  homepage 'http://seiryu.home.comcast.net/~seiryu/symboliclinker.html'
  license :bsd

  service 'SymbolicLinker.service'
end
