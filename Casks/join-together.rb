cask :v1 => 'join-together' do
  version '7.4.1'
  sha256 '86f7e31e437f7fbdbfa58db2f6e566d1f37f7eed74535ebcaa3e96eba23a4f18'

  url "http://dougscripts.com/itunes/scrx/jointogether#{version.delete('.')}.zip"
  name 'Join Together'
  appcast 'http://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          :sha256 => 'd83ab7e864a6f2df3500ce6b28ed44868bdb869af5a691372f305585c90ee03b'
  homepage 'http://dougscripts.com/itunes/itinfo/jointogether.php'
  license :commercial

  app 'Join Together.app'
end
