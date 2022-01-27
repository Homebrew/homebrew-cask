cask "easyfind" do
  version "5.0.2"
  sha256 "1539a562539e3b3a243da864fddee0351a4c7d109aa9dcae436775ecbb288fc9"

  url "https://download.devontechnologies.com/download/freeware/easyfind/#{version}/EasyFind.app.zip"
  name "EasyFind"
  desc "Find files, folders, or contents in any file"
  homepage "https://www.devontechnologies.com/apps/freeware"

  livecheck do
    url "https://www.devontechnologies.com/apps/freeware"
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/EasyFind\.app\.zip}i)
  end

  app "EasyFind.app"

  zap trash: [
    "~/Library/Application Support/EasyFind",
    "~/Library/Preferences/org.grunenberg.EasyFind.plist",
  ]
end
