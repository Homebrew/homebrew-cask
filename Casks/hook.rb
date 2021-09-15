cask "hook" do
  version "3.2.1,2021.08"
  sha256 "f5aee8d4ae6d2c1279f249b2d18656c96b91de3a2c1c5a8fe557554e1bf9aee1"

  url "https://hookproductivity.com/wp-content/uploads/#{version.after_comma.major}/#{version.after_comma.minor}/Hook-productivity-app-#{version.before_comma}.dmg_.zip",
      user_agent: :fake
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
