cask "prisma-studio" do
  version "0.448.0"
  sha256 "4a9f0cc426a14962e4ba212cbfc6c626811942aedc127e14b771adb86df828eb"

  url "https://github.com/prisma/studio/releases/download/v#{version}/Prisma-Studio.dmg",
      verified: "github.com/prisma/studio/"
  name "Prisma Studio"
  desc "Visual database editor for Prisma projects"
  homepage "https://www.prisma.io/studio"

  app "Prisma Studio.app"

  zap trash: [
    "~/Library/Application Support/Prisma Studio",
    "~/Library/Logs/Prisma Studio",
    "~/Library/Preferences/io.prisma.studio.plist",
    "~/Library/Saved Application State/io.prisma.studio.savedState",
  ]
end
