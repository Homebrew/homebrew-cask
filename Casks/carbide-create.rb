cask "carbide-create" do
  version "757"
  sha256 "276a026a029ae863e26fecf9f449cab6880d8c2a3b6aac99baa87dd24e948569"

  url "https://carbide-downloads.website-us-east-1.linodeobjects.com/cc/stable/#{version}/CarbideCreate-#{version}.dmg",
      verified: "carbide-downloads.website-us-east-1.linodeobjects.com/"
  name "Carbide Create"
  desc "CAD/CAM software for CNC routers"
  homepage "https://carbide3d.com/carbidecreate/"

  livecheck do
    url "https://carbide-downloads.website-us-east-1.linodeobjects.com/builds.json"
    strategy :json do |json|
      json["cc"]["stable"]["osx"]["build"].to_s
    end
  end

  app "Carbide Create.app"

  zap trash: [
    "~/Library/Preferences/Carbide 3D",
    "~/Library/Preferences/com.carbide*.Carbide Create.plist",
    "~/Library/Saved Application State/com.carbide3d.Carbide Create.savedState",
  ]
end
