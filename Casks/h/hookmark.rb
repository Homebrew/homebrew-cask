cask "hookmark" do
  version "6.2,2024.05"
  sha256 "dc13baafba9fb3512f2e8bd8f18752d8d50097c83574da7f275db9ae33b5b242"

  url "https://hookproductivity.com/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/Hookmark-app-#{version.csv.first}.dmg_.zip",
      user_agent: :fake
  name "Hook"
  desc "Link and retrieve key information"
  homepage "https://hookproductivity.com/"

  livecheck do
    skip "No reliable way to get version info"
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Hookmark.app"

  uninstall launchctl: "com.cogsciapps.hookautolaunchhelper",
            quit:      "com.cogsciapps.hook"

  zap trash: [
    "~/Library/Application Support/com.cogsciapps.hook",
    "~/Library/Caches/com.cogsciapps.hook",
    "~/Library/HTTPStorages/com.cogsciapps.hook",
    "~/Library/Logs/com.cogsciapps.hook",
    "~/Library/Preferences/com.cogsciapps.hook.plist",
    "~/Library/WebKit/com.cogsciapps.hook",
  ]
end
