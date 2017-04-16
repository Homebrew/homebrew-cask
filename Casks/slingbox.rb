cask :v1 => 'slingbox' do
  version '5.0.92'
  sha256 :no_check


  url 'http://download.slingmedia.com/SlingplayerDesktop/Mac/5.0.92/SlingplayerDesktop-5.0.92.dmg'
  name 'Slingplayer Desktop'
  homepage 'http://www.slingbox.com'
  license :unknown

  app 'Slingplayer Desktop.app'
end

