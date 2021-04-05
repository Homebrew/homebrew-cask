cask "imdone" do
  version "1.15.3"
  sha256 "551bbccfd105a8f8a4a24793618326a3fd6f4f25b377a01d1993d019b23d676f"

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
