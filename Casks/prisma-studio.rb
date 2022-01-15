cask "prisma-studio" do
  version "0.454.0"
  sha256 "e4ff4d9a8bed2b5c4ea567434fdfc25d0b9294c55db8c130bf47a55efc0555df"

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
