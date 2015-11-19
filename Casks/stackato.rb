cask :v1 => 'stackato' do
  version '3.2.3'
  sha256 '000d43816fc9b65616c234c6fc01c02ff626fa2f4bc6d57dc5c84b433cc22c50'

  url "https://downloads.stackato.com/client/v#{version}/stackato-#{version}-macosx10.5-i386-x86_64.zip"
  name 'Stackato'
  homepage 'https://docs.stackato.com/user/client/'
  license :apache

  binary "stackato-#{version}-macosx10.5-i386-x86_64/stackato"
end
