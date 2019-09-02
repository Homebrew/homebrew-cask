cask 'ishowu-instant' do
  version '1.2.11'
  sha256 '7429c2d8a9c7ecdf67b2bb00dc1319836f2114281e6906f9432cb522f2b0765b'

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  appcast 'https://www.shinywhitebox.com/store/appcast.php?p=14'
  name 'iShowU Instant'
  homepage 'https://www.shinywhitebox.com/ishowu-instant'

  app 'iShowU Instant.app'
end
