cask "classroom-mode-for-minecraft" do
  version "1.81.v2"
  sha256 "68bf1c2e3156ce4849c644bc47f9bcb1f817ca0e35a45ddc3f90fb6b49bb2e10"

  url "https://meedownloads.blob.core.windows.net/retailbuilds/ClassroomMode/mac/Classroom_Mode_#{version.dots_to_underscores}.dmg",
      verified: "meedownloads.blob.core.windows.net/"
  name "Classroom Mode for Minecraft"
  desc "Classroom management app for Minecraft Education Edition"
  homepage "https://education.minecraft.net/"

  livecheck do
    url "https://aka.ms/meecmmacos"
    strategy :header_match do |headers|
      headers["location"][/Classroom[._-]Mode[._-]v?(\d+(?:_v?\d+)+)\.dmg/i, 1].tr("_", ".")
    end
  end

  app "Classroom Mode for Minecraft.app"

  zap trash: [
    "~/Library/Caches/com.microsoft.mc-classroommode",
    "~/Library/WebKit/com.microsoft.mc-classroommode",
  ]
end
