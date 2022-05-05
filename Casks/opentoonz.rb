cask "opentoonz" do
  version "1.6.0"
  sha256 "d61624d7f194e533a33e4b336a4183a76d66a2da207972188979b1314725e5e2"

  url "https://github.com/opentoonz/opentoonz/releases/download/v#{version}/OpenToonz.pkg",
      verified: "github.com/opentoonz/opentoonz/"
  name "OpenToonz"
  desc "Open-source full-featured 2D animation creation software"
  homepage "https://opentoonz.github.io/e/index.html"

  pkg "OpenToonz.pkg"

  uninstall pkgutil: "io.github.opentoonz"

  zap trash: [
    "~/Library/Caches/OpenToonz",
    "~/Library/Saved Application State/io.github.opentoonz.OpenToonz.savedState",
  ]
end
