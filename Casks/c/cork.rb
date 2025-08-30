cask "cork" do
  version "1.6.0"
  sha256 "acdeeea1071c628cbb7372f414dfcc2f8c8bb508573d1a519969e888b59ca2ac"

  url "https://corkmac.app/RLS/#{version}/Cork.zip"
  name "Cork"
  desc "GUI companion app for Homebrew"
  homepage "https://www.corkmac.app/"

  livecheck do
    url "https://corkmac.app/RLS/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  depends_on macos: ">= :ventura"

  app "Cork.app"

  zap trash: [
    "~/Documents/Cork",
    "~/Library/Caches/com.davidbures.cork",
    "~/Library/HTTPStorages/com.davidbures.cork",
    "~/Library/Preferences/com.davidbures.cork.plist",
    "~/Library/Saved Application State/com.davidbures.cork.savedState",
  ]
end
