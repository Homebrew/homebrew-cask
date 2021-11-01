cask "aria-maestosa" do
  version "1.4.13"
  sha256 "51e059957841d63b37af31297150b993034fc40b20fb84f006eb8fd0a75a349f"

  url "https://downloads.sourceforge.net/ariamaestosa/AriaMaestosa-osx-64bits-#{version}.zip",
      verified: "downloads.sourceforge.net/ariamaestosa/"
  name "Aria Maestosa"
  desc "Midi sequencer and editor"
  homepage "https://ariamaestosa.sourceforge.io/"

  app "Aria Maestosa.app"

  zap trash: [
    "~/Library/Preferences/AriaMaestosa",
    "~/Library/Saved Application State/org.AriaMaestosa.savedState",
    "~/Library/Autosave Information/org.AriaMaestosa.plist",
    "~/Library/Application Support/Aria Maestosa",
  ]
end
