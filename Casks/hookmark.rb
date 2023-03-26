cask "hookmark" do
  version "5.0.2,5331,2023.03"
  sha256 "363a9a3eed1bc0983ce1d74ce43041a4ded0c42a05e0bde84db0e230d9205b66"

  url "https://hookproductivity.com/wp-content/uploads/#{version.csv.third.major}/#{version.csv.third.minor}/Hookmark-app-#{version.csv.first}-b#{version.csv.second}.dmg_.zip",
      user_agent: :fake
  name "Hook"
  desc "Link and retrieve key information"
  homepage "https://hookproductivity.com/"

  livecheck do
    url "https://hookproductivity.com/download"
    regex(%r{href=.*?/(\d+)/(\d+)/Hookmark[._-]app[._-](\d+(?:\.\d+)*)(?:[._-]b(\d+(?:\.\d+)*))?\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      if match[4].present?
        "#{match[3]},#{match[4]},#{match[1]}.#{match[2]}"
      else
        "#{match[3]},#{match[1]}.#{match[2]}"
      end
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
