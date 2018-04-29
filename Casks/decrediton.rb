cask 'decrediton' do
  version '1.2.0'
  sha256 '87fc394e1c371001f000d8e57112afca9c076d10d4ba58f15bcd37c9ae640d4e'

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  appcast 'https://github.com/decred/decred-binaries/releases.atom',
          checkpoint: 'aefb1740af71db6196e1443420e846d31ee492f41070d2fcb67bc22f0f4687d0'
  name 'Decrediton'
  homepage 'https://github.com/decred/decrediton'

  app 'decrediton.app'
end
