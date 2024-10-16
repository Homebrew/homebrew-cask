cask "focusrite-saffire-mixcontrol" do
  version "3.9.3168_0"
  sha256 "b78a246b464f6033beb368b85a7702c1a6d42a70339a94a715eaed289a300557"

  url "https://fael-downloads-prod.focusrite.com/customer/prod/s3fs-public/downloads/Saffire%20MixControl-#{version}.dmg"
  name "Focusrite Saffire MixControl"
  desc "Software for Focusrite products"
  homepage "https://focusrite.com/"

  deprecate! date: "2024-10-15", because: :discontinued

  pkg "Saffire MixControl.pkg"

  uninstall launchctl: "tc.tctechnologies.daemon.Saffire",
            quit:      "com.focusrite.SaffireMixControl2",
            kext:      "tc.tctechnologies.driver.Saffire",
            pkgutil:   [
              "com.focusrite.SaffireInstall.pkg",
              "tc.tctechnologies.pkg.Saffire.audio_driver",
              "tc.tctechnologies.pkg.Saffire.midi_driver",
            ]
end
