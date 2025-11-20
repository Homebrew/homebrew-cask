cask "nutstore" do
  version "6.4.5"
  sha256 "9531351e48371931a086ee589eabb27e426085b5b70186d1436e9c48d51e354f"

  url "https://dc-pkg-cdn.jianguoyun.com/static/exe/ex/#{version}/nutstore_client-#{version}-osx-app.zip"
  name "Nutstore"
  name "坚果云"
  desc "Cloud storage service platform"
  homepage "https://www.jianguoyun.com/"

  livecheck do
    url "https://www.jianguoyun.com/static/exe/latestVersion"
    strategy :json do |json|
      osx_entry = json.find { |item| item["OS"] == "osx" }

      if osx_entry && (ex_url = osx_entry["exUrl"])
        match = ex_url.match(/nutstore_client-(\d+\.\d+\.\d+)-osx-app\.zip/)
        match[1] if match
      end
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
