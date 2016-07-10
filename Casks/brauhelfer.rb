cask 'brauhelfer' do
  version '1.4.2.2'
  sha256 '3c2173b7fc241a278b000b3e51ef4145408dfa6fdaf1db09374f9f15c94a996a'

  url "http://www.joerum.de/kleiner-brauhelfer/lib/exe/fetch.php?media=download:01_04_02_02:kb_osx_lion_v#{version}.dmg"
  name 'Kleiner Brauhelfer'
  homepage 'http://www.joerum.de/kleiner-brauhelfer'
  license :gpl

  app 'brauhelfer.app'
end
