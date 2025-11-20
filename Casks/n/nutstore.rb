cask "nutstore" do
  version "6.4.4"
  sha256 "c52b17bac3c039334d55275f87088c442861727c36264a6054c9d5436404eebb"

  url "https://dc-pkg-cdn.jianguoyun.com/static/exe/ex/#{version}/nutstore_client-#{version}-osx-app.zip"
  name "Nutstore"
  name "坚果云"
  desc "Cloud storage service platform"
  homepage "https://www.jianguoyun.com/"

  livecheck do
    url "https://www.jianguoyun.com/static/exe/latestVersion"
    strategy :json do |json|
      json.find { |item| item["OS"] == "osx" }&.fetch("exVer", nil)
    end
  end

  auto_updates true

  app "Nutstore.app"

  zap trash: [
    "~/.nutstore",
    "~/Library/Application Scripts/net.nutstore.osxapp.FileProvider",
    "~/Library/Application Scripts/net.nutstore.osxapp.FinderSyncExtension",
    "~/Library/Application Support/Nutstore",
    "~/Library/Containers/net.nutstore.osxapp.FileProvider",
    "~/Library/Containers/net.nutstore.osxapp.FinderSyncExtension",
    "~/Library/Preferences/net.nutstore.NutstoreJavaBE.plist",
    "~/Nutstore Files",
    "~/NutstoreCloudBridge",
  ]
end
