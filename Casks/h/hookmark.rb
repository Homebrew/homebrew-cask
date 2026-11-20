cask "hookmark" do
  version "7.3.1"
  sha256 "e73f2f93cc441f9f62160a08c925cb89577e4b64ac83392d9942309224010227"

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
  depends_on :macos

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
