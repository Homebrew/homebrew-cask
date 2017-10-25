cask 'fantastical' do
  version '2.4.4'
  sha256 'bb200bb15e12eab3d347fe409cd801a4cc8a1df98fe6a30b4998110166b7257b'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast "https://flexibits.com/fantastical/appcast#{version.major}.php",
          checkpoint: '8b6ccce9063d41c9b29568ebcd27c0cda005804d1cdc3900306c80b02ab28efd'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  auto_updates true

  app "Fantastical #{version.major}.app"

  uninstall launchctl: "com.flexibits.fantastical#{version.major}.mac.launcher",
            quit:      "com.flexibits.fantastical#{version.major}.mac"

  zap trash: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
