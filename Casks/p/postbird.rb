cask "postbird" do
  version "0.8.4"
  sha256 "d9ac960e0c48fab31b0662c726a3eb373794c14dd49651fa533ca3c1c67c67be"

  url "https://github.com/Paxa/postbird/releases/download/#{version}/Postbird-#{version}.dmg"
  name "Postbird"
  desc "Open-source PostgreSQL GUI client"
  homepage "https://github.com/Paxa/postbird"

  app "Postbird.app"

  zap trash: [
    "~/Library/Application Support/Postbird",
    "~/Library/Preferences/com.electron.postbird.plist",
    "~/Library/Saved Application State/com.electron.postbird.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
