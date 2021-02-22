cask "phidget" do
  version "22"
  sha256 "9cf21d515e96413c05ac9b630a2e2cec42c30fbf798c3b54a040f4542a6a4d3b"

  url "https://www.phidgets.com/downloads/phidget#{version}/libraries/macos/Phidget#{version}.dmg"
  name "Phidget"
  desc "Libraries and control software for the Phidgets sensing kits"
  homepage "https://www.phidgets.com/"

  depends_on macos: ">= :el_capitan"

  pkg "Phidgets.pkg"

  uninstall pkgutil: [
    "com.phidgets.phidget22java",
    "com.phidgets.phidget22extra",
    "com.phidgets.phidget22networkserver",
    "com.phidgets.controlpanel22",
    "com.phidgets.phidgetframework22",
    "com.phidgets.signeddriver",
  ], kext: [
    "com.phidgets.driver.Phidget",
  ]
end
