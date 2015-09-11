cask :v1 => 'inssider' do
  version :latest
  sha256 :no_check

  # metageek.net is the official download host per the vendor homepage
  url 'http://files.metageek.net/downloads/inSSIDer4-installer.dmg'
  name 'inSSIDer'
  appcast 'http://metageek.net/misc/versions/MacSSIDer/MacSSIDer_appcast.xml',
          :sha256 => 'b65b8fe01f8d74b162e1e7f411acb7be2db17fe650e2485d0534f101de72ba17'
  homepage 'http://www.inssider.com/'
  license :commercial

  app 'inSSIDer.app'
end
