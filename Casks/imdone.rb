cask "imdone" do
  version "1.29.5"
  sha256 "9efa92e35ce27e8c3d72dd0d5038314df19dc76102c3165582c7fa49edd420ef"

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
