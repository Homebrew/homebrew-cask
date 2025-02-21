cask "carbide-create" do
  version "813"
  sha256 "2662565e7e09009474bdf4f29f666a8243cf21503e5ef79356c9f8461b8decb2"

  url "https://carbide-downloads.website-us-east-1.linodeobjects.com/cc/stable/#{version}/CarbideCreate-#{version}.dmg",
      verified: "carbide-downloads.website-us-east-1.linodeobjects.com/"
  name "Carbide Create"
  desc "CAD/CAM software for CNC routers"
  homepage "https://carbide3d.com/carbidecreate/"

  livecheck do
    url "https://carbide-downloads.website-us-east-1.linodeobjects.com/builds.json"
    strategy :json do |json|
      json.dig("cc", "stable", "osx", "build")&.to_s
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
