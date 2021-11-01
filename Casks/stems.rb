cask "stems" do
  version "0.0.1"
  sha256 "bf967bf26bfc85ff0588cdb7bfa492f6d457e295ab62068d30c22061038d5bf7"

  url "https://stems-electron-releases.s3.us-east-1.amazonaws.com/Stems-#{version}.dmg",
      verified: "stems-electron-releases.s3.us-east-1.amazonaws.com/"
  name "Stems"
  desc "Split an audio file into individual tracks"
  homepage "https://stems.app/"

  livecheck do
    url "https://stems-electron-releases.s3.us-east-1.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Stems.app"

  zap trash: [
    "~/Library/Application Support/Stems",
    "~/Library/Preferences/software.sunflower.stems.plist",
    "~/Library/Saved Application State/software.sunflower.stems.savedState",
  ]
end
