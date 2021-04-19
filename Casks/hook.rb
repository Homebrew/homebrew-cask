cask "hook" do
  version "2.2.2,2021-03"
  sha256 "75acc69d06d68082d5fad6679b57e0a06e46dddffef921e6a02cabb6221e233e"

  url "https://hookproductivity.com/wp-content/uploads/#{version.after_comma.tr("-", "/")}/Hook-productivity-app-#{version.before_comma}.dmg"
  name "Hook"
  desc "Link & retrieve key information"
  homepage "https://hookproductivity.com/"
  
  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/(\d+)/(\d+)/Hook-productivity-app-(\d+(?:\.\d+)*)\.dmg}i)
      "#{match[3]},#{match[1]}-#{match[2]}"
  end
    
  auto_updates true

  app 'Hook.app'

  uninstall launchctl: 'com.cogsciapps.hookautolaunchhelper',
            quit:      'com.cogsciapps.hook'

  zap trash:
             [
               '~/Library/Caches/com.cogsciapps.hook',
               '~/Library/Logs/com.cogsciapps.hook',
               '~/Library/Preferences/com.cogsciapps.hook.plist',
             ]
end
