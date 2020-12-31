cask "sitebulb" do
  version "4.6"
  sha256 "ceb26105b47c11bcdfba0bf72956fa08ad7f293f57f3a2295ab9e97b43bf4b65"

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast "https://sitebulb.com/download/",
          must_contain: version.major_minor
  name "Sitebulb"
  desc "Website auditing tool"
  homepage "https://sitebulb.com/"

  app "Sitebulb.app"
end
