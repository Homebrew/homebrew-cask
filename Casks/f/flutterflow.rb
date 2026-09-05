cask "flutterflow" do
  version "7.0.78"
  sha256 "dca47afdae32613c86618f5a4e630577d4835dff4b552a32f880f02eca40598b"

  url "https://storage.googleapis.com/flutterflow-downloads/macos/flutterflow-#{version}-macos.zip"
  name "FlutterFlow"
  desc "Visual development platform"
  homepage "https://flutterflow.io/"

  livecheck do
    url "https://storage.googleapis.com/flutterflow-downloads/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on :macos

  app "FlutterFlow.app"

  zap trash: [
    "~/Library/Application Support/io.flutterflow.prod.mac",
    "~/Library/Caches/io.flutterflow.prod.mac",
    "~/Library/Containers/io.flutterflow.flutterflow",
    "~/Library/HTTPStorages/io.flutterflow.prod.mac",
    "~/Library/Preferences/io.flutterflow.prod.mac.plist",
    "~/Library/Saved Application State/io.flutterflow.prod.mac.savedState",
  ]
end
