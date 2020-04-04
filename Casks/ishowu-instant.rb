cask 'ishowu-instant' do
  version '1.3.3'
  sha256 '916992d89b97f9ab543bee8035146dfc267550a31d8d2bf5a34039cefc309708'

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  appcast 'https://www.shinywhitebox.com/store/appcast.php?p=14'
  name 'iShowU Instant'
  homepage 'https://www.shinywhitebox.com/ishowu-instant'

  depends_on macos: '>= :mojave'

  app 'iShowU Instant.app'
end
