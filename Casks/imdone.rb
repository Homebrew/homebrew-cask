cask "imdone" do
  version "1.16.6"
  sha256 "384377b7cfc5353e0c7da706b75e9d23e34d6b9edfe3ce2d32dabad11fa2f8c5"

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
