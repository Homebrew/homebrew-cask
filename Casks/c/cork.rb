cask "cork" do
  version "1.7.1"
  sha256 "4d4c9b661471e64c2e254fd00ffa4fcf207c98bd311e9239915f0062c3f2a667"

  url "https://corkmac.app/RLS/#{version}/Cork.zip"
  name "Cork"
  desc "GUI companion app for Homebrew"
  homepage "https://corkmac.app/"

  livecheck do
    url "https://corkmac.app/RLS/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  depends_on macos: ">= :sonoma"

  app "Cork.app"

  zap trash: [
    "~/Documents/Cork",
    "~/Library/Caches/com.davidbures.cork",
    "~/Library/HTTPStorages/com.davidbures.cork",
    "~/Library/Preferences/com.davidbures.cork.plist",
    "~/Library/Saved Application State/com.davidbures.cork.savedState",
  ]
end
