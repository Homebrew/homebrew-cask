cask "gisto" do
  version "1.13.4"
  sha256 "40b8cb8654231af8550d0df76d39a8e69eb1e2fc909faba68882f2fe3576800e"

  url "https://github.com/Gisto/Gisto/releases/download/v#{version}/Gisto-#{version}.dmg",
      verified: "github.com/Gisto/Gisto/"
  name "Gisto"
  desc "Snippets management desktop application with (team) sharing options"
  homepage "https://www.gistoapp.com/"

  deprecate! date: "2024-07-11", because: :unmaintained

  app "Gisto.app"

  zap trash: [
    "~/Library/Application Support/Gisto",
    "~/Library/Logs/Gisto",
    "~/Library/Preferences/com.gistoapp.gisto2.plist",
    "~/Library/Saved Application State/com.gistoapp.gisto2.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
