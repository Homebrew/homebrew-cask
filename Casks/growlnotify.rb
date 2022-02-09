cask "growlnotify" do
  version "2.1"
  sha256 "eec601488b19c9e9b9cb7f0081638436518bce782d079f6e43ddc195727c04ca"

  url "https://growl.cachefly.net/GrowlNotify-#{version}.zip",
      verified: "growl.cachefly.net/"
  name "GrowlNotify"
  desc "Notification system"
  homepage "https://growl.github.io/growl/"

  pkg "GrowlNotify.pkg"

  uninstall pkgutil: "info.growl.growlnotify.*pkg"

  caveats do
    discontinued
  end
end
