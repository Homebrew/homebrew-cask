cask "prisma-studio" do
  version "0.437.0"
  sha256 "e2c49d47bf0480d926258e56894076cd89985de8f01dd8073e1a7efafb6acea6"

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
