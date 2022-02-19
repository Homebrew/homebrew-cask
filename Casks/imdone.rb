cask "imdone" do
  version "1.26.2"
  sha256 "32aacf53c3a6e239301fd65ad822b0284f133cb6f690276f5febd581966c05ca"

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
