cask "fetch" do
  version "5.8.3"
  sha256 "249b7d870fd8feb480285efaea57cfc00f062f4d55bd8d2ae202856275da1065"

  url "https://fetchsoftworks.com/fetch/download/Fetch_#{version}.zip"
  name "Fetch"
  desc "File transfer client"
  homepage "https://fetchsoftworks.com/fetch/"

  livecheck do
    url :homepage
    regex(/href=.*Fetch[._-]v?(\d+(?:\.\d+)+)\.zip"/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Fetch.app"

  zap trash: [
    "~/Library/Application Support/com.fetchsoftworks.Fetch",
    "~/Library/Caches/com.apple.helpd/Generated/com.fetchsoftworks.fetch.help*",
    "~/Library/HTTPStorages/com.fetchsoftworks.Fetch",
    "~/Library/Preferences/com.fetchsoftworks.Fetch.plist",
    "~/Library/Saved Application State/com.fetchsoftworks.Fetch.savedState",
  ]
end
