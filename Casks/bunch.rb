cask "bunch" do
  version "1.4.6,136"
  sha256 "1e25108de24a1e2d3bd5db5eec6747d4aa5e468c2fb5e08428080a622741c881"

  url "https://brettterpstra.com/updates/bunch/Bunch#{version.csv.first}#{version.csv.second}.dmg",
      verified: "brettterpstra.com/updates/bunch/"
  name "Bunch"
  desc "Automation tool"
  homepage "https://bunchapp.co/"

  livecheck do
    url "https://brettterpstra.com/updates/bunch/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Bunch.app"

  zap trash: "~/Library/Preferences/com.brettterpstra.Bunch.plist"
end
