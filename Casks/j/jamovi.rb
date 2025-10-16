cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.8.0"
  sha256 arm:   "a5bc8be4bae1767fb86e91adb7b41600f5290f3c5f1ba408b5ec4c24d0a1ddaf",
         intel: "6de45e177a74543bdb751781dbbca36f2f7d900abd59f49decb35bfd341d7839"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos-#{arch}.dmg"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  livecheck do
    url "https://www.jamovi.org/download.html"
    regex(/href=.*?jamovi[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true

  app "jamovi.app"

  zap trash: [
    "~/Library/Application Support/jamovi",
    "~/Library/Logs/jamovi",
    "~/Library/Preferences/org.jamovi.jamovi.plist",
    "~/Library/Saved Application State/org.jamovi.jamovi.savedState",
  ]
end
