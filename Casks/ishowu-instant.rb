cask 'ishowu-instant' do
  version '1.3.4'
  sha256 'e02a00862ea0bf6e4855942b8ed285b0c743d0bb6fd387cc8a29157415240d38'

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  appcast 'https://www.shinywhitebox.com/store/appcast.php?p=14'
  name 'iShowU Instant'
  homepage 'https://www.shinywhitebox.com/ishowu-instant'

  depends_on macos: '>= :mojave'

  app 'iShowU Instant.app'
end
