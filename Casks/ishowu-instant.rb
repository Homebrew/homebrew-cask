cask 'ishowu-instant' do
  version '1.3.1'
  sha256 'a17bead2ad26c2009a3ef12737ec9206775d5b8084fa649780a86a4e17d680e6'

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  appcast 'https://www.shinywhitebox.com/store/appcast.php?p=14'
  name 'iShowU Instant'
  homepage 'https://www.shinywhitebox.com/ishowu-instant'

  depends_on macos: '>= :mojave'

  app 'iShowU Instant.app'
end
