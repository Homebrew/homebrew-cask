cask "gisto" do
  version "2.0.0-beta+1"

  # Disable livecheck as this is pre-release
  livecheck false

  on_arm do
    sha256 "b5064a2b27415d21ae7ea0c0900e605080ad815f2b3218cc08f404092da67143"

    url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto_#{version}_aarch64.dmg",
        verified: "github.com/Gisto/Gisto"
  end
  on_intel do
    sha256 "59ebde1cd1ba76781e0b37087ba526bc4261df559ff27b36a6329544938ca3ad"

    url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto_#{version}_x64.dmg",
        verified: "github.com/Gisto/Gisto"
  end

  name "Gisto"
  desc "Snippets management desktop application"
  homepage "https://www.gisto.org/"

  app "Gisto.app"

  zap trash: [
    "~/Library/Application Support/Gisto",
    "~/Library/Caches/com.gistoapp.gisto2",
    "~/Library/Logs/Gisto",
    "~/Library/Preferences/com.gistoapp.gisto2.helper.plist",
    "~/Library/Preferences/com.gistoapp.gisto2.plist",
    "~/Library/Saved Application State/com.gistoapp.gisto2.savedState",
  ]
end
