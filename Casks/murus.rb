cask 'murus' do
  version '1.4.4'
  sha256 '991af45515b74457013f436403632ba97ef9d8755d4ab628966da144e8021a1c'

  url "http://www.murusfirewall.com/downloads/murus-#{version}.zip"
  name 'Murus Firewall'
  homepage 'http://www.murusfirewall.com'

  depends_on macos: '>= :mavericks'

  app 'Murus.app'
end
