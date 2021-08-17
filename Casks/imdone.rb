cask "imdone" do
  version "1.20.5"
  sha256 "519526cb57b2aeefaed4d6a71a6629c30d48542e5850bf201da0d0caefcd2ba6"

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
    "~/Library/Preferences/io.imdone.app.plist",
    "~/Library/Saved Application State/io.imdone.app.savedState",
    "~/Library/Logs/imdone",
  ]
end
