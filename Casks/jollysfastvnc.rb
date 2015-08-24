cask :v1 => 'jollysfastvnc' do
  version '1.52'
  sha256 '0b0f4eb3d8a4aed33d36acfbac9fb34763d7b8faca00f8efc88ea2a9d9a0352e'

  url 'http://www.jinx.de/JollysFastVNC_files/JollysFastVNC.current.dmg'
  name 'JollysFastVNC'
  homepage 'http://www.jinx.de/JollysFastVNC.html'
  license :commercial

  app 'JollysFastVNC.app'
end 
