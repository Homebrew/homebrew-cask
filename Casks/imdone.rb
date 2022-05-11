cask "imdone" do
  version "1.28.4"
  sha256 "9f924ec22833318b5dc79411b9831319a96741bcc4eeaf4d555ea0b744a4cd8c"

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
