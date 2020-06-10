cask 'ishowu-instant' do
  version '1.3.5'
  sha256 '3e55de169c44adac469e0e481ef5bb61cb8366d4bdad00bbc17fb778d58f1fc7'

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  appcast 'https://www.shinywhitebox.com/store/appcast.php?p=14'
  name 'iShowU Instant'
  homepage 'https://www.shinywhitebox.com/ishowu-instant'

  depends_on macos: '>= :mojave'

  app 'iShowU Instant.app'
end
