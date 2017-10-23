cask 'fantastical' do
  version '2.4.3'
  sha256 '48c9113bb545096815e2a96aabd9f958288d000435a3991409aeb3b627964c1c'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast "https://flexibits.com/fantastical/appcast#{version.major}.php",
          checkpoint: 'd0bb699231574c1b414bdd108026c7a86b2cd46fa5b00002c58e9b05103b5470'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  auto_updates true

  app "Fantastical #{version.major}.app"

  uninstall launchctl: "com.flexibits.fantastical#{version.major}.mac.launcher",
            quit:      "com.flexibits.fantastical#{version.major}.mac"

  zap trash: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
