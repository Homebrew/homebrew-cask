cask 'silo' do
  version '2.5.5'
  sha256 '7d0a4af414dcfe623a76da5d23fa324651913b2258062e998274e336eb8c29f2'

  url "https://nevercenter.com/silo/download_file/filearchive/Install_Silo_#{version.dots_to_underscores}_mac.dmg"
  name 'Silo'
  homepage 'https://nevercenter.com/silo/'

  app "Silo #{version.major}.app"
end
