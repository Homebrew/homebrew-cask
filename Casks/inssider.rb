cask :v1 => 'inssider' do
  version :latest
  sha256 :no_check

  # metageek.net is the official download host per the vendor homepage
  url 'http://files.metageek.net/downloads/inSSIDer4-installer.dmg'
  name 'inSSIDer'
  appcast 'http://metageek.net/misc/versions/MacSSIDer/MacSSIDer_appcast.xml',
          :sha256 => '60552c236619b926474faecd64c70618812545bcacd80183c3c2d76c9fb90945'
  homepage 'http://www.inssider.com/'
  license :commercial

  app 'inSSIDer.app'
end
