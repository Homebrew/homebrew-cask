cask "hookmark" do
  version "4.0,2022.10"
  sha256 "805e004a1f5d81f9d2fdb2b8236ea29610daadfeebbd9305e732e3388b86ded7"

  url "https://hookproductivity.com/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/Hookmark-app-#{version.csv.first}.dmg_.zip",
      user_agent: :fake
  name "Hook"
  desc "Link and retrieve key information"
  homepage "https://hookproductivity.com/"

  livecheck do
    url "https://hookproductivity.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/(\d+)/(\d+)/Hookmark[._-]app[._-](\d+(?:\.\d+)*(?:-\d+)*)\.dmg}i)
      next if match.blank?

      "#{match[3]},#{match[1]}.#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

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
