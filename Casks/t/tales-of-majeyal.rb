cask "tales-of-majeyal" do
  version "1.7.6"
  sha256 "86c6d1267a47204e30adc8c3389c1af0b68996ae0989b60d857ca38ca25ea221"

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name "Tales of Maj'Eyal"
  desc "Topdown tactical RPG roguelike game and game engine"
  homepage "https://te4.org/"

  livecheck do
    url "https://te4.org/download"
    regex(/href=.*?t-engine4[._-]osx[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  # Renamed for clarity: app name is inconsistent with its branding.
  app "T-Engine.app", target: "Tales-of-Maj'Eyal.app"

  zap trash: [
    "~/Library/Application Support/T-Engine",
    "~/Library/Saved Application State/org.te4.T-Engine.savedState",
  ]
end
