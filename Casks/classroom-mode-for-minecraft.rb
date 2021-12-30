cask "classroom-mode-for-minecraft" do
  version "1.81"
  sha256 "982eac2c28235d483351760ee17a3a45ca9d8d3f4ada05959e2bda859b0e3538"

  url "https://meedownloads.blob.core.windows.net/retailbuilds/ClassroomMode/mac/Classroom_Mode_#{version.dots_to_underscores}.dmg",
      verified: "meedownloads.blob.core.windows.net/"
  name "Classroom Mode for Minecraft"
  desc "Classroom management app for Minecraft Education Edition"
  homepage "https://education.minecraft.net/"

  livecheck do
    url "https://aka.ms/meecmmacos"
    strategy :header_match do |headers|
      headers["location"][/Classroom[._-]Mode[._-]v?(\d+(?:_\d+)+)\.dmg/i, 1].tr("_", ".")
    end
  end

  app "Classroom Mode for Minecraft.app"

  zap trash: [
    "~/Library/Caches/com.microsoft.mc-classroommode",
    "~/Library/WebKit/com.microsoft.mc-classroommode",
  ]
end
