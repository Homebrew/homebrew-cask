cask "quik" do
  version "2.7.0.874"
  sha256 "d134c85643d7747c926c5194649737d0835d47e4bb03b2ef77491e540aa36ea8"

  url "https://software.gopro.com/Mac/GoPro_Quik-MacInstaller-#{version}.dmg"
  name "GoPro Quik"
  desc "Access and edit GoPro photos and videos"
  homepage "https://community.gopro.com/t5/en/GoPro-Quik-for-desktop/ta-p/394305?profile.language=en"

  deprecate! date: "2023-12-17", because: :discontinued

  pkg "GoPro Quik.pkg"

  uninstall pkgutil: "com.GoPro.pkg.GoProApp"
end
