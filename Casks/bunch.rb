cask "bunch" do
  version "1.4.8,143"
  sha256 "d2d2779139b9524c2762aa0d40aceb4a20857ee78a2b887bba15cc4b44e20f40"

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
