cask "preferencecleaner" do
  version "2.0"
  sha256 "800f1df5ca2519eaf66e0efc383a7a3f76018f8f8760058c3cee08b5ec75bd8e"

  url "https://www.echomist.co.uk/software/downloads/PreferenceCleaner_#{version}.dmg"
  appcast "https://www.echomist.co.uk/software/PreferenceCleaner.php"
  name "PreferenceCleaner"
  homepage "https://www.echomist.co.uk/software/PreferenceCleaner.php"

  depends_on macos: ">= :catalina"

  app "PreferenceCleaner #{version.major}.app"
end
