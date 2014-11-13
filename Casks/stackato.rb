cask :v1 => 'stackato' do
  version '3.1.1'
  sha256 '79b34288416e2adac24c30c8eacd0b1177f8c3985d355af16e13b7b9dd17259d'

  url "http://downloads.activestate.com/stackato/client/v#{version}/stackato-#{version}-macosx10.5-i386-x86_64.zip"
  homepage 'http://docs.stackato.com/user/client/index.html'
  license :unknown

  binary "stackato-#{version}-macosx10.5-i386-x86_64/stackato"
end
