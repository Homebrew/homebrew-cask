cask "opentoonz" do
  version "1.7.0"
  sha256 "292a1b51964099eb9814d5df03f0386db5e069131215fc4965dc3b3501008829"

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
