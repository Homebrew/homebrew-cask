cask "macmediakeyforwarder" do
  version "3.1"
  sha256 "176e672e9aa61564f06124eb0b6aedbfb04fae10dd3595479e85fba25c9d724a"

  url "http://milgra.com/downloads/mmkf/MacMediaKeyForwarder#{version}.zip"
  appcast "http://milgra.com/downloads/mmkf/"
  name "Mac Media Key Forwarder"
  homepage "http://milgra.com/mac-media-key-forwarder.html"

  depends_on macos: ">= :sierra"

  app "MacMediaKeyForwarder.app"

  zap trash: "~/Library/Preferences/com.milgra.hsmke.plist"
end
