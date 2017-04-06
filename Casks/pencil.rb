cask 'pencil' do
  version '3.0.1'
  sha256 'a8a9f43180e3dcd04adb3619575d4d870e5dda24be40307106140a93368d2036'

  url "http://pencil.evolus.vn/dl/V#{version}/Pencil-#{version}.dmg"
  appcast 'https://github.com/prikhi/pencil/releases.atom',
          checkpoint: '207db45afcda031fbc4e6b642c0144ea0d5fa6e4d987dbdd62fecf9582f410bb'
  name 'Pencil'
  homepage 'https://pencil.evolus.vn/'

  app 'Pencil.app'
end
