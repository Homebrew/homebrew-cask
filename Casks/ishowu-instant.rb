cask 'ishowu-instant' do
  version '1.2.10'
  sha256 '87a1eab84ffeb861fb4878b96ef708fe1e2a86bb4012b8fe197f716342d520a2'

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  appcast 'https://www.shinywhitebox.com/store/appcast.php?p=14'
  name 'iShowU Instant'
  homepage 'https://www.shinywhitebox.com/ishowu-instant'

  app 'iShowU Instant.app'
end
