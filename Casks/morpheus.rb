cask "morpheus" do
  version "2.2.2"
  sha256 "5bb2090fbad62333735ba2aa5aab1ccebc748fea741bb149b524942b74fafde6"

  url "https://imc.zih.tu-dresden.de/morpheus/packages/mac/Morpheus-#{version}.dmg",
      verified: "imc.zih.tu-dresden.de/morpheus/"
  name "Morpheus"
  desc "Modelling environment for multi-cellular systems biology"
  homepage "https://morpheus.gitlab.io/"

  livecheck do
    url "https://imc.zih.tu-dresden.de/morpheus/packages/mac/"
    strategy :page_match
    regex(/href=.*?Morpheus[._-](\d+(?:\.\d+)*)\.dmg/i)
  end

  conflicts_with cask: "homebrew/cask-versions/morpheus-beta"

  app "Morpheus.app"

  zap trash: [
    "~/Library/Application Support/data/Morpheus",
    "~/Library/Application Support/Morpheus",
    "~/Library/Application Support/CrashReporter/morpheus_*.plist",
    "~/Library/Caches/Morpheus",
    "~/Library/Preferences/morpheus-gui.plist",
    "~/Library/Preferences/io.gitlab.morpheus.morpheus.plist",
    "~/Library/Preferences/de.tu-dresden.Morpheus.plist",
    "~/Library/Preferences/org.morpheus.Morpheus.plist",
    "~/Library/Saved Application State/de.tu-dresden.Morpheus.savedState",
    "~/Library/Saved Application State/io.gitlab.morpheus.morpheus.savedState",
  ]
end
