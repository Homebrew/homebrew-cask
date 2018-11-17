cask 'silo' do
  version '2.5.6b'
  sha256 'e50cbcf455906504fce52b3f2086145effa1395841122d2aefe8ea756f9f00fb'

  url "https://nevercenter.com/silo/download_file/filearchive/Install_Silo_#{version.dots_to_underscores}_mac.dmg"
  appcast 'https://nevercenter.com/silo/release_notes/'
  name 'Silo'
  homepage 'https://nevercenter.com/silo/'

  app "Silo #{version.major}.app"
end
