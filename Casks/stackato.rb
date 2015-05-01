cask :v1 => 'stackato' do
  version '3.2.0'
  sha256 'ba54288e3770c3ad8928c0ad3b5904b552dbe32e2748ed724a38fcb2efc4fb8c'

  url "http://downloads.activestate.com/stackato/client/v#{version}/stackato-#{version}-macosx10.5-i386-x86_64.zip"
  name 'Stackato'
  homepage 'http://docs.stackato.com/user/client/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  binary "stackato-#{version}-macosx10.5-i386-x86_64/stackato"
end
