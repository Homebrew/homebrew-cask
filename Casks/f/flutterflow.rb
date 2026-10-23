cask "flutterflow" do
  version "7.2.12"
  sha256 "341114f2b983402d6cbab0e2ec2b4745f903098cc9149d67e3f68ebb960a7e5a"

  url "https://storage.googleapis.com/flutterflow-downloads/macos/flutterflow-#{version}-macos.zip"
  name "FlutterFlow"
  desc "Visual development platform"
  homepage "https://flutterflow.io/"

  livecheck do
    url "https://storage.googleapis.com/flutterflow-downloads/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :monterey

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
