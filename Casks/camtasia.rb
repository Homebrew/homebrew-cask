cask "camtasia" do
  version "2020.0.8"
  sha256 "6377c4d5934514b713c9f58a7e6180408c143bf136f7aeb52a718b60788bafb7"

  url "https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg"
  appcast "https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History"
  name "Camtasia"
  homepage "https://www.techsmith.com/camtasia.html"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Camtasia #{version.major}.app"
end
