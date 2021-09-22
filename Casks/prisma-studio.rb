cask "prisma-studio" do
  version "0.432.0"
  sha256 "9841b7db9d78365f2e3fb086136a15c81932903ba9322b67eb2ba597f5ad4911"

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
