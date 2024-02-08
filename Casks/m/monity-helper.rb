cask "monity-helper" do
  version "1.2.5"
  sha256 :no_check

  url "https://monityapp.com/download/MonityHelper.pkg"
  name "Monity Helper"
  desc "Helper app for Monity to provide system stats"
  homepage "https://monityapp.com/helper/"

  livecheck do
    url :homepage
    regex(/MonityHelper\.pkg.+?Version:\s+(\d+(?:\.\d+)+)/im)
  end

  pkg "MonityHelper.pkg"

  uninstall launchctl: "com.Monity.Helper",
            quit:      "com.Monity.Helper",
            pkgutil:   [
              "com.Monity.Helper.monityHelper.com.Monity.Helper.pkg",
              "com.Monity.Helper.monityHelper.MonityHelper.pkg",
              "com.Monity.Helper.monityHelper.postflight.pkg",
              "com.Monity.Helper.monityHelper.preflight.pkg",
            ]
end
