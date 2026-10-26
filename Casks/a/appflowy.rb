cask "appflowy" do
  os macos: "macos-universal.zip", linux: "linux-x86_64.AppImage"

  version "0.14.11"
  sha256 arm:          "1d6162b9e658c70b3aba85eb2876d978c8bd51781c168d190456a2c50aa5930c",
         intel:        "1d6162b9e658c70b3aba85eb2876d978c8bd51781c168d190456a2c50aa5930c",
         x86_64_linux: "e8e0df81778469733b49ad757fb981376fd89ad79347b0c8c8dac182dfe1bb42"

  on_macos do
    depends_on macos: :monterey

    app "AppFlowy.app"

    zap trash: [
      "~/Library/Application Scripts/com.appflowy.macos",
      "~/Library/Application Support/com.appflowy.appflowy.flutter",
      "~/Library/Containers/com.appflowy.macos",
      "~/Library/Preferences/com.appflowy.appflowy.flutter.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "AppFlowy-#{version}-linux-x86_64.AppImage", target: "AppFlowy.AppImage"
  end

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/AppFlowy-#{version}-#{os}"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
