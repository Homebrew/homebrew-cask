cask 'pluralsight' do
  version '1.11.260'
  sha256 'b8cffa4a530db18891b844ccff20b5a72305bba7d5a519358409be09ff1acf26'

  url "https://macapp.pluralsight.com/installpluralsight#{version}.dmg"
  appcast 'https://macapp.pluralsight.com/appcast'
  name 'Pluralsight'
  homepage 'https://www.pluralsight.com/'

  depends_on macos: '>= :high_sierra'

  app 'Pluralsight.app'
end
