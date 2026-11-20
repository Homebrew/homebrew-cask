cask "devonsphere-express" do
  version "1.9.10"
  sha256 "9e3da18965f7543d5c07a29a54666725d2a7cda82591ada68eee9221816a53cf"

  url "https://download.devontechnologies.com/download/devonsphere/#{version}/DEVONsphere_Express.app.zip"
  name "DEVONsphere Express"
  desc "Find items related to the frontmost document locally or online"
  homepage "https://www.devontechnologies.com/apps/devonsphere"

  livecheck do
    url "https://api.devontechnologies.com/2/apps/sparkle/sparkle.php?id=900000028"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

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
