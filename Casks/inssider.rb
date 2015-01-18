cask :v1 => 'inssider' do
  version :latest
  sha256 :no_check

  # metageek.net is the official download host per the vendor homepage
  url 'http://files.metageek.net/downloads/inSSIDer4-installer.dmg'
  name 'inSSIDer'
  homepage 'http://www.inssider.com/'
  license :commercial

  app 'inSSIDer.app'
end
