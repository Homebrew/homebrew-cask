cask "morkro-papyrus" do
  version "1.0.3"
  sha256 "6130e0d93486db9e969686270e8edddc9be16b52b342fdb4d31eb4546d161118"

  url "https://github.com/morkro/papyrus/releases/download/#{version}/Papyrus-osx-#{version}.zip"
  name "Papyrus"
  desc "Unofficial Dropbox Paper desktop app"
  homepage "https://github.com/morkro/papyrus"

  conflicts_with cask: "papyrus"

  app "Papyrus.app"

  zap trash: [
    "~/Library/Application Support/Papyrus",
    "~/Library/Preferences/com.electron.papyrus.plist",
    "~/Library/Saved Application State/com.electron.papyrus.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
