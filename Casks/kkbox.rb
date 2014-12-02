cask :v1 => 'kkbox' do
  version '5.0.22-3a569cb'
  sha256 '93714ce1801698dbd77aafbc8e7770261703b7f9840111ec7b496986959dd3f6'

  url "http://download.kkbox.com/files/KKBOX-#{version}.dmg"
  homepage 'http://www.kkbox.com/'
  license :commercial

  app 'KKBOX.app'
end
