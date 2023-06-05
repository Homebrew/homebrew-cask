cask "runcat-plugins-manager" do
  version "1.3.0"
  sha256 :no_check

  url "https://kyome.io/resources/runcat_plugins_manager.dmg"
  name "RunCat Plugins Manager"
  desc "Enable RunCat to show the CPU temperature"
  homepage "https://kyome.io/runcat/index.html?lang=en#plugins"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "RunCat Plugins Manager.app"

  zap trash: [
    "~/Library/Application Scripts/com.kyome.RunCatPlugins",
    "~/Library/Application Scripts/com.kyome.RunCatPluginsManager",
    "~/Library/Containers/com.kyome.RunCatPlugins",
    "~/Library/Containers/com.kyome.RunCatPluginsManager",
  ]
end
