cask "sitebulb" do
  version "4.5"
  sha256 "71c2e8e8bd28db9fad98754067be20e454038421326c6b579cc1332476e9c529"

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast "https://sitebulb.com/download/",
          must_contain: version.major_minor
  name "Sitebulb"
  desc "Website auditing tool"
  homepage "https://sitebulb.com/"

  app "Sitebulb.app"
end
