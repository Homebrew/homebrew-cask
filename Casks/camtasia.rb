cask "camtasia" do
  version "2020.0.7"
  sha256 "c1b833dfbb6d99e693dcbac2f1af414be7acebc68cacbf077d134dea48d0c354"

  url "https://download.techsmith.com/camtasiamac/releases/Camtasia.dmg"
  appcast "https://support.techsmith.com/hc/en-us/articles/115006624748-Camtasia-Mac-Version-History"
  name "Camtasia"
  homepage "https://www.techsmith.com/camtasia.html"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Camtasia #{version.major}.app"
end
