cask "cork" do
  version "2.0.0"
  sha256 "5ea636f386d836b4cf1d6ecb934a00ac03dde520c96d290a5ff8e1a1c0ccc0dc"

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
