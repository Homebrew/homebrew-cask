cask "hook" do
  version "3.0-4312-1,2021.05"
  sha256 "6629af835caf5de482f636ba5754564c8da2b2ab5367a68c5d794bbf17057eb3"

  url "https://hookproductivity.com/wp-content/uploads/#{version.after_comma.major}/#{version.after_comma.minor}/Hook-productivity-app-#{version.before_comma}.dmg"
  name "Hook"
  desc "Link and retrieve key information"
  homepage "https://hookproductivity.com/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/(\d+)/(\d+)/Hook-productivity-app-(\d+(?:\.\d+)*(?:-\d+)*)\.dmg}i)
      "#{match[3]},#{match[1]}.#{match[2]}"
    end
  end

  auto_updates true

  app "Hook.app"

  uninstall launchctl: "com.cogsciapps.hookautolaunchhelper",
            quit:      "com.cogsciapps.hook"

  zap trash: [
    "~/Library/Caches/com.cogsciapps.hook",
    "~/Library/Logs/com.cogsciapps.hook",
    "~/Library/Preferences/com.cogsciapps.hook.plist",
  ]
end
