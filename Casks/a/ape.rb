cask "ape" do
  version :latest
  sha256 :no_check  # No versioned URL, so we skip checksum verification

  url "https://jorgensen.biology.utah.edu/wayned/ape/Download/Mac/ApE_OSX_modern_current.dmg"
  name "ApE (A Plasmid Editor)"
  desc "Software for DNA sequence analysis and annotation"
  homepage "https://jorgensen.biology.utah.edu/wayned/ape/"

  app "ApE.app"

  zap trash: [
    "~/Library/Application Support/ApE",
    "~/Library/Preferences/com.yourcompany.ApE.plist",
    "~/Library/Saved Application State/com.yourcompany.ApE.savedState",
  ]
end
