cask "icue" do
  version "3.38.61"
  sha256 "a51f0e7a97e19235dddc71f9253942ed2cb0269b138a859dba8abf7dd6d0c17e"

  url "https://downloads.corsair.com/Files/CUE/iCUE-#{version}-release.dmg"
  name "iCUE"
  desc "CORSAIR Utility Engine, allowing control over CORSAIR peripherals in one place"
  homepage "https://www.corsair.com/uk/en/icue-mac"

  pkg "iCUE.pkg"

  uninstall script: {
    executable: "/Applications/Corsair/iCUEUninstaller.app",
  }
end
