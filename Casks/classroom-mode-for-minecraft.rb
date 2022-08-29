cask "classroom-mode-for-minecraft" do
  version "1.82"
  sha256 "a0f6fc0ec5729df69e4cce7574b489d55de64b8593789663ccc2558e7c03af38"

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
