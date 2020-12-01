cask "camtasia" do
  version "2020.0.12"
  sha256 "927d8724458bbba9d3ae905d1b9802fe26b3222b37df6cb031537927d960e853"

  url "https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg"
  appcast "https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History"
  name "Camtasia"
  homepage "https://www.techsmith.com/camtasia.html"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Camtasia #{version.major}.app"
end
