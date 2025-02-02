cask "gisto" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.3"
  sha256 arm:   "2bac54248fa04f77ff221cc8d7c3169bd699621c1e475bcc49ce9881c556dc9f",
         intel: "4ed3e8848413322253339833ad5bbf1e18d23ccc66432a5d91d649e8e5daaa55"

  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto_#{version}_#{arch}.dmg",
      verified: "github.com/Gisto/Gisto/"
  name "Gisto"
  desc "Snippets management desktop application"
  homepage "https://www.gisto.org/"

  app "Gisto.app"

  zap trash: [
    "~/Library/Application Support/Gisto",
    "~/Library/Caches/com.gistoapp.gisto2",
    "~/Library/Logs/Gisto",
    "~/Library/Preferences/com.gistoapp.gisto2.helper.plist",
    "~/Library/Preferences/com.gistoapp.gisto2.plist",
    "~/Library/Saved Application State/com.gistoapp.gisto2.savedState",
  ]
end
