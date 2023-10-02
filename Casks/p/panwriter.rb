cask "panwriter" do
  arch arm: "arm64", intel: "x64"

  version "0.8.6"
  sha256 arm:   "11095d2dd24c661b069b732017893880a65ad5c3ad7707abe93d22b74f1cc105",
         intel: "3169bea7447ec001e17b458df4f7fec340be8ab7205720782be0243c28bb8448"

  url "https://github.com/mb21/panwriter/releases/download/v#{version}/PanWriter-#{version}-#{arch}.dmg",
      verified: "github.com/mb21/panwriter/"
  name "PanWriter"
  desc "Markdown editor with pandoc integration and paginated preview"
  homepage "https://panwriter.com/"

  depends_on formula: "pandoc"

  app "PanWriter.app"

  zap trash: [
    "~/Library/Application Support/PanWriter",
    "~/Library/Preferences/com.panwriter.app.plist",
  ]
end
