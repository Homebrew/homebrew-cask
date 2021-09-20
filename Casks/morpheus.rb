cask "morpheus" do
  version "2.2.5.1"
  sha256 "39823039b329e3edbcae263e0ecd3b3d30c6c0e0d2fc523946336b3d3ba8bdbf"

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
