cask 'ishowu-instant' do
  version '1.3.0'
  sha256 '6a17a8c2f127397841826b27dfcae9887c454d098ba951e07257635f5bb7ac15'

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  appcast 'https://www.shinywhitebox.com/store/appcast.php?p=14'
  name 'iShowU Instant'
  homepage 'https://www.shinywhitebox.com/ishowu-instant'

  app 'iShowU Instant.app'
end
