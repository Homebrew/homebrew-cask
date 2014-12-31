cask :v1 => 'haroopad' do
  version '0.12.2'
  sha256 'f8fe84ec70090c7517b4ef9f8c2896a4dedb9774d0a87800fdd98f706a64929b'

  url "https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v#{version}.dmg"
  homepage 'http://pad.haroopress.com/'
  license :oss

  app 'haroopad.app'
end
