cask 'boxcryptor' do
  version '2.7.778'
  sha256 '5147187c0434eb9736ef2ed2168e2142f97e55e55f5131c0ec6d7dcde51684a8'

  # d3k3ih5otj72mn.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3k3ih5otj72mn.cloudfront.net/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: '291babe1e979a31fbd5b756c5166a75f9ab06d109cfa38d06428301ce7db0bda'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en'

  depends_on macos: '>= :mavericks'

  app 'Boxcryptor.app'
end
