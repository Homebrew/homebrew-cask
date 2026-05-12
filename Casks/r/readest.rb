cask "readest" do
  version "0.11.1"
  sha256 "c4a2d9dc3351066cb0deea059ba665b670b191cb2b040bf294906960edeabf88"

  url "https://github.com/readest/readest/releases/download/v#{version}/Readest_#{version}_universal.dmg",
      verified: "github.com/readest/readest/"
  name "Readest"
  desc "Ebook reader"
  homepage "https://readest.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Readest.app"

  zap trash: [
    "~/Library/Application Support/com.bilingify.readest",
    "~/Library/Caches/com.bilingify.readest",
    "~/Library/Caches/readest",
    "~/Library/Preferences/com.bilingify.readest.plist",
    "~/Library/WebKit/com.bilingify.readest",
    "~/Library/WebKit/readest",
  ]
end
