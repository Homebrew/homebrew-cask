cask 'hands-off' do
  version '3.2.7'
  sha256 'a9f0cf35a61316046b5320b8979aff96422a66df1e52085df97354e797014403'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast "https://www.oneperiodic.com/handsoff#{version.major}.xml",
          checkpoint: '46c83934820c4cb3547cd83785f69fd5443bd2d54528a9359f6633807ccfe1a2'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'

  app 'Hands Off!.app'

  zap trash: '~/Library/Preferences/com.metakine.handsoff.plist'
end
