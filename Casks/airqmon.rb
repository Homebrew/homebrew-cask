cask "airqmon" do
  version "2.0.0"
  sha256 "a516116bb2b2858b435240aa4d946c6aab0aa1066a31c38293402784950c99e5"

  url "https://github.com/jsynowiec/airqmon/releases/download/v#{version}/airqmon-mac.zip",
      verified: "github.com/jsynowiec/airqmon/"
  appcast "https://github.com/jsynowiec/airqmon/releases.atom"
  name "Airqmon"
  homepage "https://airqmon.app/"

  app "Airqmon.app"
end
