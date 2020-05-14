cask 'ishowu-instant' do
  version '1.3.4'
  sha256 '1db9d09656c0ff07659e6488e648bc04f97fea5939e6f60fbb8770448a54786a'

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  appcast 'https://www.shinywhitebox.com/store/appcast.php?p=14'
  name 'iShowU Instant'
  homepage 'https://www.shinywhitebox.com/ishowu-instant'

  depends_on macos: '>= :mojave'

  app 'iShowU Instant.app'
end
