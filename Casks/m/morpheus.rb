cask "morpheus" do
  version "2.2.5.2"
  sha256 "ce23be8d9d64f3462873c69166e5b8662ed52a2b418d2a15451e7dc79e22430c"

  url "https://imc.zih.tu-dresden.de/morpheus/packages/mac/Morpheus-#{version}.dmg",
      verified: "imc.zih.tu-dresden.de/morpheus/"
  name "Morpheus"
  desc "Modelling environment for multi-cellular systems biology"
  homepage "https://morpheus.gitlab.io/"

  deprecate! date: "2024-04-15", because: :discontinued

  app "Morpheus.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/morpheus_*.plist",
    "~/Library/Application Support/data/Morpheus",
    "~/Library/Application Support/Morpheus",
    "~/Library/Caches/Morpheus",
    "~/Library/Preferences/de.tu-dresden.Morpheus.plist",
    "~/Library/Preferences/io.gitlab.morpheus.morpheus.plist",
    "~/Library/Preferences/morpheus-gui.plist",
    "~/Library/Preferences/org.morpheus.Morpheus.plist",
    "~/Library/Saved Application State/de.tu-dresden.Morpheus.savedState",
    "~/Library/Saved Application State/io.gitlab.morpheus.morpheus.savedState",
  ]
end
