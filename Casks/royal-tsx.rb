cask 'royal-tsx' do
  version '2.2.9.1000'
  sha256 '7fccf594f56fd2824efef0bc933669ad3ab2f3788224450a65fd2eb493423bf9'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '24711c531c247279671199e4247695bcbc9c30d3e69254fc22c23df86cde5bcd'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'

  app 'Royal TSX.app'
end
