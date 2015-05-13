cask :v1 => 'macid' do
  version '1.2b'
  sha256 '71dd713f6090b0c6038c274fa32bdb59bb8cfe7f39ec06c252f71dcae932e6a6'

  url "http://macid.co/app/#{version.sub(%r{b.*},'')}/#{version.sub(%r{.*b},'')}/MacID-for-OS-X.zip"
  name 'MacID'
  homepage 'http://macid.co/'
  license :gratis

  app 'MacID.app'
end
