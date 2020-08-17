cask "camtasia" do
  version "2020.0.6"
  sha256 "1e9d17abf225c1651c289f3123e65078f58d211d6a85ab619efdb5e48e8c38c2"

  url "https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg"
  appcast "https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History"
  name "Camtasia"
  homepage "https://www.techsmith.com/camtasia.html"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Camtasia #{version.major}.app"
end
