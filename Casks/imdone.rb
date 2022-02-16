cask "imdone" do
  version "1.25.5"
  sha256 "cb0803415155161edc2cece2a898860b189bd7c277843fbd8be4eb764d0f7a39"

  url "https://imdone.io/downloads/imdone-#{version}.dmg"
  name "imdone"
  desc "Kanban board that works on plain text markdown files or code"
  homepage "https://imdone.io/"

  livecheck do
    url :homepage
    regex(/imdone[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "imdone.app"

  zap trash: [
    "~/Library/Application Support/imdone",
    "~/Library/Logs/imdone",
    "~/Library/Preferences/io.imdone.app.plist",
    "~/Library/Saved Application State/io.imdone.app.savedState",
  ]
end
