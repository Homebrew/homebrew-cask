cask "battery-report" do
  version "1.2.0"
  sha256 "1ad72dc7c73c2a9e0d85b7ee6836348714fe00b51bd6c49352b0c01e40425015"

  url "https://www.dssw.co.uk/batteryreport/dsswbatteryreport-#{version.no_dots}.dmg"
  name "Battery Report"
  desc "Creates technical summaries of power supplies"
  homepage "https://www.dssw.co.uk/batteryreport/"

  disable! date: "2024-12-16", because: :discontinued

  app "Battery Report.app"
end
