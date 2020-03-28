cask 'ishowu-instant' do
  version '1.3.2'
  sha256 'd6d315cbf7ccdab1c68b4802038f24b46bf5907793e50f0aabc39c5b6d1b6c4e'

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  appcast 'https://www.shinywhitebox.com/store/appcast.php?p=14'
  name 'iShowU Instant'
  homepage 'https://www.shinywhitebox.com/ishowu-instant'

  depends_on macos: '>= :mojave'

  app 'iShowU Instant.app'
end
