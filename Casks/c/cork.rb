cask "cork" do
  version "1.5.4"
  sha256 "33b210ee19fdb31194d9c0edf35841927bdc51c7cba867eda36badd8a17c06f8"

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
