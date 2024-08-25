cask "serene" do
  version "3.0.1"
  sha256 "5ed3e0383e4a70c687c2e221c8a7cf134c05e6294da873491c11e3c2e4e6b975"

  url "https://storage.googleapis.com/serene-production-builds/Serene-#{version}.dmg",
      verified: "storage.googleapis.com/serene-production-builds/"
  name "Serene"
  desc "Productivity app for focus and planning"
  homepage "https://sereneapp.com/"

  livecheck do
    url "https://app.sereneapp.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Serene.app"

  zap trash: [
    "~/Library/Application Support/Serene",
    "~/Library/Logs/Serene",
    "~/Library/Saved Application State/com.vh.sereneapp.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
