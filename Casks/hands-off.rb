cask :v1 => 'hands-off' do
  version '2.3.6'
  sha256 '79243a6c23c1fec384b5a491e4a3b94e5d81284661257a360dfbbc6ce89dee0b'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast 'http://www.metakine.com/sparkle/handsoff2/checkupdate.php',
          :sha256 => '9703b6f8692548abcb336829cb0aabdbfdb40c047a3256f23ddfa63b5c01bdfa'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'
  license :commercial

  app 'Hands Off!.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.metakine.handsoff.plist'
end
