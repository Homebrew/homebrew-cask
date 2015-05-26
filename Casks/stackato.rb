cask :v1 => 'stackato' do
  version '3.2.1'
  sha256 'a2f3eceac381bf018a8435b085c9ed36307e35cc9e8c077bf05aad91f095b2ae'

  url "http://downloads.activestate.com/stackato/client/v#{version}/stackato-#{version}-macosx10.5-i386-x86_64.zip"
  name 'Stackato'
  homepage 'http://docs.stackato.com/user/client/'
  license :apache

  binary "stackato-#{version}-macosx10.5-i386-x86_64/stackato"
end
