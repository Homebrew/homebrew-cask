cask "camtasia" do
  version "2020.0.9"
  sha256 "ab9ddf8c8916edd426554339ff859f6252dff406d3a81b095c09127ed5a67424"

  url "https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg"
  appcast "https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History"
  name "Camtasia"
  homepage "https://www.techsmith.com/camtasia.html"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Camtasia #{version.major}.app"
end
