cask "clibor" do
  version "1.4"
  sha256 :no_check

  language "en", default: true do
    url "https://chigusa-web.com/clibor-for-mac-en/dl/clibor-for-mac/"
  end
  language "ja" do
    url "https://chigusa-web.com/clibor-for-mac/dl/clibor-for-mac/"
  end

  name "Clibor for Mac"
  desc "Clipboard manager"
  homepage "https://chigusa-web.com/clibor-for-mac-en/"

  livecheck do
    url "https://chigusa-web.com/appinfo/clibor-for-mac.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Clibor.app"

  zap trash: [
    "~/Library/Application Scripts/com.chigusa-web.Clibor",
    "~/Library/Containers/com.chigusa-web.Clibor",
  ]
end
