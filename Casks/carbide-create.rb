cask "carbide-create" do
  version "756"
  sha256 "a792ff77ab1516aa10d3d93db349a6f14c17ded06e79113fca691154cd83cc04"

  url "https://carbide-downloads.website-us-east-1.linodeobjects.com/cc/stable/#{version}/CarbideCreate-#{version}.dmg",
      verified: "carbide-downloads.website-us-east-1.linodeobjects.com/"
  name "Carbide Create"
  desc "CAD/CAM Software for CNC Routers"
  homepage "https://carbide3d.com/carbidecreate/"

  livecheck do
    url "https://carbide-downloads.website-us-east-1.linodeobjects.com/builds.json"
    strategy :json do |json|
      json["cc"]["stable"]["osx"]["build"].to_s
    end
  end

  app "Carbide Create.app"

  zap trash: [
    "~/Library/Preferences/com.carbide-3d.Carbide Create.plist",
    "~/Library/Preferences/Carbide 3D",
    "~/Library/Preferences/Carbide 3D/Carbide Create",
    "~/Library/Preferences/Carbide 3D/Carbide Createcarbidecreate_log.txt",
    "~/Library/Preferences/com.carbide3d.Carbide Create.plist",
    "~/Library/Saved Application State/com.carbide3d.Carbide Create.savedState",
  ]
end
