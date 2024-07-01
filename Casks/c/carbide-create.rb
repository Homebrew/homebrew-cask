cask "carbide-create" do
  version "777"
  sha256 "1606b9ef42c3c20a830f595216972ba4bda1542e2e750775bba8b864338da24f"

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

  depends_on macos: ">= :mojave"

  app "Carbide Create.app"

  zap trash: [
    "~/Library/Preferences/Carbide 3D",
    "~/Library/Preferences/com.carbide*.Carbide Create.plist",
    "~/Library/Saved Application State/com.carbide3d.Carbide Create.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
