cask :v1 => 'back-in-time' do
  version :latest
  sha256 :no_check

  url 'http://www.tri-edre.fr/pub/files/backintime3.dmg'
  homepage 'http://www.tri-edre.fr/english/backintime.html'
  license :commercial

  app 'Back-In-Time 3.app'
end
