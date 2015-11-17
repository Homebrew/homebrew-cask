cask :v1 => 'back-in-time' do
  version :latest
  sha256 :no_check

  url 'http://www.tri-edre.com/pub/files/backintime4.dmg'
  name 'Back-In-Time'
  homepage 'http://www.tri-edre.com/english/backintime.html'
  license :commercial

  app 'Back-In-Time 4.app'
end
