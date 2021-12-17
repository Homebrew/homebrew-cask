cask "loading" do
  version "1.2.6,632"
  sha256 :no_check

  url "https://bonzaiapps.com/loading/Loading.zip"
  name "Loading"
  desc "Network activity monitor"
  homepage "https://bonzaiapps.com/loading/"

  livecheck do
    url "https://bonzaiapps.com/loading/update.xml"
    strategy :sparkle
  end

  app "Loading.app"

  zap trash: "~/Library/Preferences/com.bonzaiapps.loading.plist"
end
