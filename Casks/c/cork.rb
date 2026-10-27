cask "cork" do
  version "2.1.1"
  sha256 "3165b3ea5ac5f9da101a83839dc510362f1b884fd0945c471d5c21798c260e3f"

  url "https://corkmac.app/RLS/#{version}/Cork.zip"
  name "Cork"
  desc "GUI companion app for Homebrew"
  homepage "https://corkmac.app/"

  livecheck do
    url "https://corkmac.app/RLS/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  depends_on macos: :sonoma

  app "Cork.app"

  uninstall quit: "eu.davidbures.cork"

  zap trash: [
    "~/Documents/Cork",
    "~/Library/Application Support/Cork",
    "~/Library/Caches/com.davidbures.cork",
    "~/Library/Caches/eu.davidbures.cork",
    "~/Library/HTTPStorages/com.davidbures.cork",
    "~/Library/HTTPStorages/eu.davidbures.cork",
    "~/Library/Preferences/com.davidbures.cork.plist",
    "~/Library/Preferences/eu.davidbures.cork.plist",
    "~/Library/Saved Application State/com.davidbures.cork.savedState",
  ]
end
