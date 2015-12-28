cask 'stackato' do
  version '3.2.4'
  sha256 'e1d940509d46bc1ec4829998c736b802f77c01971e661d43456fe7574b16e48f'

  url "https://downloads.stackato.com/client/v#{version}/stackato-#{version}-macosx10.5-i386-x86_64.zip"
  name 'Stackato'
  homepage 'https://docs.stackato.com/user/client/'
  license :apache

  binary "stackato-#{version}-macosx10.5-i386-x86_64/stackato"
end
