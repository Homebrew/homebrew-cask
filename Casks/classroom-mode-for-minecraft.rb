cask "classroom-mode-for-minecraft" do
  version "1.81"
  sha256 "982eac2c28235d483351760ee17a3a45ca9d8d3f4ada05959e2bda859b0e3538"

  url "https://meedownloads.blob.core.windows.net/retailbuilds/ClassroomMode/mac/Classroom_Mode_#{version.tr(".", "_")}.dmg",
      verified: "meedownloads.blob.core.windows.net/"
  name "Classroom Mode for Minecraft"
  desc "Classroom management app for Minecraft Education Edition"
  homepage "https://education.minecraft.com/"

  app "Classroom Mode for Minecraft.app"
end
