cask :v1 => 'inssider' do
  version :latest
  sha256 :no_check

  url 'http://files.metageek.net/downloads/inSSIDer4-installer.dmg'
  homepage 'http://www.inssider.com/'
  license :commercial

  app 'inSSIDer.app'
end
