cask "hook" do
  version "3.8,2022.09"
  sha256 "314b467d7869d83f95bb0fc7a435f4c4aa0d827c0cf42d9f96fb66e9a27aebdb"

  url "https://hookproductivity.com/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/Hook-productivity-app-#{version.csv.first}.dmg_.zip",
      user_agent: :fake
  name "Hook"
  desc "Link and retrieve key information"
  homepage "https://hookproductivity.com/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/(\d+)/(\d+)/Hook-productivity-app-(\d+(?:\.\d+)*(?:-\d+)*)\.dmg}i)
      next if match.blank?

      "#{match[3]},#{match[1]}.#{match[2]}"
    end
  end

  auto_updates true

  app "Hook.app"

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
