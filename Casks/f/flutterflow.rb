cask "flutterflow" do
  version "7.2.3"
  sha256 "6c6802a62728880afdfd5589ebacfe67bddf8fa1ab1272a77dac1f9edc9aabc5"

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
