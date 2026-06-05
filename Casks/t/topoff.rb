cask "topoff" do
  version "2.0"
  sha256 "387f33fc9f98528543231d9b4bf89910bfee22d92a2185bbae11ba2bbbf01c91"

  url "https://github.com/ihazgithub/TopOff/releases/download/v#{version}/TopOff-v#{version}.dmg"
  name "TopOff"
  desc "Menu bar app that keeps Homebrew packages up to date"
  homepage "https://github.com/ihazgithub/TopOff"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "TopOff.app"

  zap trash: [
    "~/Library/Application Support/com.topoff.TopOff",
    "~/Library/Caches/com.topoff.TopOff",
    "~/Library/HTTPStorages/com.topoff.TopOff",
    "~/Library/Preferences/com.topoff.TopOff.plist",
    "~/Library/Saved Application State/com.topoff.TopOff.savedState",
  ]
end
