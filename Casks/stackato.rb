cask 'stackato' do
  version '3.2.6'
  sha256 'b0f2221957379f5e37c56da2818b6755d928b6f5b6a92e415a14098692e9b3ab'

  url "http://downloads.stackato.com/client/v#{version}/stackato-#{version}-macosx10.5-i386-x86_64.zip"
  appcast 'http://downloads.stackato.com/client/',
          checkpoint: '561b75d8736f901c2768fa1039f282de1a8dd1da7586166637b0bddc10ad117b'
  name 'Stackato'
  homepage 'https://docs.stackato.com/user/client/'

  binary "stackato-#{version}-macosx10.5-i386-x86_64/stackato"
end
