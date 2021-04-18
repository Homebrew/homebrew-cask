cask "hook" do
  version "2.2.2"
  sha256 "75acc69d06d68082d5fad6679b57e0a06e46dddffef921e6a02cabb6221e233e"

  url "https://hookproductivity.com/wp-content/uploads/2021/03/Hook-productivity-app-#{version}.dmg"
  name "Hook"
  desc "Link & retrieve key information"
  homepage "https://hookproductivity.com/"

  app "Hook.app"

  zap trash: "~/Library/Preferences/com.cogsciapps.hook.plist"
end
