cask "devonsphere-express" do
  on_catalina :or_older do
    version "1.9.7"
    sha256 "2240a88c65f6de66b554ea802030effb0fa88ba6ab41fca84af3e0b5afdffbf1"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "1.9.8"
    sha256 "a9bae928bf58c1a5cbb11878c306ec1e7a3d2bdc5de3e5d080f291c5363c6997"

    livecheck do
      url "https://api.devontechnologies.com/2/apps/sparkle/sparkle.php?id=900000028"
      strategy :sparkle
    end
  end

  url "https://download.devontechnologies.com/download/devonsphere/#{version}/DEVONsphere_Express.app.zip"
  name "DEVONsphere Express"
  desc "Find items related to the frontmost document locally or online"
  homepage "https://www.devontechnologies.com/apps/devonsphere"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "DEVONsphere Express.app"

  uninstall quit: "com.devon-technologies.sphereexpress"

  zap trash: [
    "~/Library/Application Support/DEVONsphere Express",
    "~/Library/Caches/com.apple.helpd/Generated/com.devontechnologies.devonsphereexpress.help*",
    "~/Library/Caches/com.devon-technologies.sphereexpress",
    "~/Library/HTTPStorages/com.devon-technologies.sphereexpress",
    "~/Library/Preferences/com.devon-technologies.sphereexpress.plist",
  ]
end
