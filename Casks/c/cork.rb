cask "cork" do
  version "2.1.0"
  sha256 "4649d0823e3eff172922fe646b9e4a330dbf00d6929543192197d970621f2b81"

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
