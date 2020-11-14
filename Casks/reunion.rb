cask "reunion" do
  version "13.0.0.201114n"
  sha256 "67dd20a7aab47db4e7a7adb67f0ed1685a9a23e635da7c3df7006cc6ec297eed"

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml",
          must_contain: version.dots_to_hyphens
  name "Reunion"
  homepage "https://www.leisterpro.com/"

  app "Reunion #{version.major}.app"
end
