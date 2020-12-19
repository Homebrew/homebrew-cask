cask "monity-helper" do
  version "1.2.5,50"
  sha256 :no_check

  url "https://www.monityapp.com/download/MonityHelper.pkg"
  name "Monity Helper"
  homepage "https://www.monityapp.com/"

  pkg "MonityHelper.pkg"

  uninstall pkgutil: [
    "com.Monity.Helper.monityHelper.com.Monity.Helper.pkg",
    "com.Monity.Helper.monityHelper.MonityHelper.pkg",
    "com.Monity.Helper.monityHelper.postflight.pkg",
    "com.Monity.Helper.monityHelper.preflight.pkg",
  ]
end
