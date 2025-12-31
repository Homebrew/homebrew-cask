cask "hookmark" do
  version "6.13"
  sha256 "33926bc938999662c3b2f9e7a56d3633418e8db7a33c16652edc2b858becc725"

  url "https://updates.hookproductivity.com/downloads/Hookmark-app-#{version}.dmg",
      user_agent: :browser
  name "Hook"
  desc "Link and retrieve key information"
  homepage "https://hookproductivity.com/"

  livecheck do
    url "https://updates.hookproductivity.com/updates/a77a1a87-7d69-435d-90ea-7365b2f7bddb",
        user_agent: :browser
    strategy :sparkle, &:short_version
  end

  auto_updates true

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
