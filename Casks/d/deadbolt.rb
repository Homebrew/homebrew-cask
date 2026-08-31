cask "deadbolt" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: ".dmg", linux: ".x86_64.AppImage"

  version "2.1.1"

  on_macos do
    sha256 arm:   "c8ce77caf427d24730fe0e9abd34cc49ebcb1650952cbbc79a2da180e7c8bee0",
           intel: "4b3950a09cb8e46ce31bfc5d54853264217810641684d298d30ecf3a05a8a4fd"

    app "Deadbolt.app"

    uninstall quit: "org.alichtman.deadbolt"

    zap trash: [
      "~/Library/Application Support/deadbolt",
      "~/Library/Preferences/org.alichtman.deadbolt.plist",
      "~/Library/Saved Application State/org.alichtman.deadbolt.savedState",
    ]
  end
  on_linux do
    sha256 "ccd8b744ca20f2a02dd53cc502ff2a3ff9eb300513951b010764a58dcd0665aa"

    depends_on arch: :x86_64

    app_image "Deadbolt-#{version}.x86_64.AppImage", target: "Deadbolt.AppImage"
  end

  url "https://github.com/alichtman/deadbolt/releases/download/v#{version}/Deadbolt-#{version}#{arch}#{url_end}"
  name "Deadbolt"
  desc "File encryption tool"
  homepage "https://github.com/alichtman/deadbolt"

  livecheck do
    url :url
    strategy :github_latest
  end
end
