cask :v1 => 'qcad' do
  version '3.9.1'
  sha256 'f96e063f6098c46f9a25a7d4f280c906e10133aebf291be663d5e5f559fab61c'

  url "http://www.qcad.org/archives/qcad/qcad-#{version}-osx-10.6-10.10.dmg"
  name 'QCAD'
  homepage 'http://www.qcad.org/'
  license :gpl

  app 'QCAD.app'
end
