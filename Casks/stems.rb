cask "stems" do
  version "0.0.1"
  sha256 "bf967bf26bfc85ff0588cdb7bfa492f6d457e295ab62068d30c22061038d5bf7"

  url "https://stems-releases.s3.us-east-1.amazonaws.com/Stems-#{version}.dmg",
      verified: "stems-releases.s3.us-east-1.amazonaws.com/"
  appcast "https://stems-releases.s3.amazonaws.com/latest-mac.yml"
  name "Stems"
  desc "Split any audio file into individual tracks"
  homepage "https://stems.app/"

  app "Stems.app"

  zap trash: [
    "~/Library/Application Support/Stems",
    "~/Library/Preferences/software.sunflower.stems.plist",
    "~/Library/Saved Application State/software.sunflower.stems.savedState",
  ]
end
