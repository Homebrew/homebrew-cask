cask "carbide-create" do
  on_arm do
    version "876"
    sha256 "d430027fe869d9c8d8ad0c788e68243a91301e12a7dfb2b8853c85be88897e35"

    livecheck do
      url "https://carbide-downloads.website-us-east-1.linodeobjects.com/builds.json"
      strategy :json do |json|
        json.dig("cc", "stable", "osx", "build")&.to_s
      end
    end

    depends_on macos: :ventura
  end
  on_intel do
    version "842"
    sha256 "97c993705a1c3ef86aca8a6ec298bf7f564dfc6d20c9336434b29409d0ce0e5d"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: :any
  end

  url "https://carbide-downloads.website-us-east-1.linodeobjects.com/cc/stable/#{version}/CarbideCreate-#{version}.dmg"
  name "Carbide Create"
  desc "CAD/CAM software for CNC routers"
  homepage "https://carbide3d.com/carbidecreate/"

  depends_on :macos

  app "Carbide Create.app"

  zap trash: [
    "~/Library/Preferences/Carbide 3D",
    "~/Library/Preferences/com.carbide*.Carbide Create.plist",
    "~/Library/Saved Application State/com.carbide3d.Carbide Create.savedState",
  ]
end
