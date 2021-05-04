cask "imdone" do
  version "1.17.4"
  sha256 "268014bf6f9ad1ff1a2cac0f987b5c36772f8c834645764f27e6ec4bf7ddbbc8"

  url "https://imdone.io/downloads/imdone-#{version}.dmg"
  name "imdone"
  desc "Kanban board that works on plain text markdown files or code"
  homepage "https://imdone.io/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/imdone-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "imdone.app"

  zap trash: [
    "~/Library/Application Support/imdone",
    "~/Library/Preferences/io.imdone.app.plist",
    "~/Library/Saved Application State/io.imdone.app.savedState",
    "~/Library/Logs/imdone",
  ]
end
