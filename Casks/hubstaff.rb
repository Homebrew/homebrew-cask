cask "hubstaff" do
  version "1.5.15,2652"
  sha256 "abea6948da97884d2f9890ffca45a75408d2a750681eae0212f79a202c77b429"

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast "https://app.hubstaff.com/appcast.xml"
  name "Hubstaff"
  homepage "https://hubstaff.com/"

  app "Hubstaff.app"
end
