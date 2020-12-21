cask "macmediakeyforwarder" do
  version "3.1"
  sha256 "176e672e9aa61564f06124eb0b6aedbfb04fae10dd3595479e85fba25c9d724a"

  url "https://github.com/milgra/macmediakeyforwarder/releases/download/#{version}/MacMediaKeyForwarder#{version}.zip",
      verified: "github.com/milgra/macmediakeyforwarder/"
  appcast "https://github.com/milgra/macmediakeyforwarder/releases"
  name "Mac Media Key Forwarder"
  homepage "http://milgra.com/"

  depends_on macos: ">= :sierra"

  app "MacMediaKeyForwarder.app"

  zap trash: "~/Library/Preferences/com.milgra.hsmke.plist"
end
