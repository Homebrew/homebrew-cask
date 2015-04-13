cask :v1 => 'macid' do
  version '1.1b14'
  sha256 '80f9ac0b682f53b4c28c5958c0e4dddb3804aac31d48751109805865b9f3fbae'

  url "http://macid.co/app/#{version.sub(%r{b.*},'')}/#{version.sub(%r{.*b},'')}/MacID-for-OS-X.zip"
  name 'MacID'
  homepage 'http://macid.co/'
  license :gratis

  app 'MacID.app'
end
