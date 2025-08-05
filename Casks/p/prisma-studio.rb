cask "prisma-studio" do
  version "0.458.0"
  sha256 "00dd82a9f8ab8f193f4d60b635edaac9f75b341f53c1ca0957efd898db1ba952"

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

  caveats do
    requires_rosetta
  end
end
