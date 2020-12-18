cask "camtasia" do
  version "2020.0.12,113623"
  sha256 :no_check

  url "https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg"
  appcast "https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History"
  name "Camtasia"
  homepage "https://www.techsmith.com/camtasia.html"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Camtasia #{version.major}.app"
end
