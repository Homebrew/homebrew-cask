cask :v1 => 'stackato' do
  version '3.2.2'
  sha256 '12bbc6ce6bd4b142c13a02cbfa97c10a4a1759e416d9906064224d757765ef05'

  url "https://downloads.activestate.com/stackato/client/v#{version}/stackato-#{version}-macosx10.5-i386-x86_64.zip"
  name 'Stackato'
  homepage 'https://docs.stackato.com/user/client/'
  license :apache

  binary "stackato-#{version}-macosx10.5-i386-x86_64/stackato"
end
