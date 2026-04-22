cask "cadran" do
  version "1.3.1"
  sha256 "394274b3b5a80fce432e18ba0bcb7efa2f6d3ab73ff146628db08435dd6786bd"

  url "https://github.com/Ilyomix/Cadran-releases/releases/download/v#{version}/Cadran-#{version}.dmg",
      verified: "github.com/Ilyomix/Cadran-releases/"
  name "Cadran"
  desc "Desktop clock rendered behind your icons"
  homepage "https://cadranapp.com/"

  livecheck do
    url "https://github.com/Ilyomix/Cadran-releases/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Cadran.app"

  zap trash: [
    "~/Library/Application Support/Cadran",
    "~/Library/Preferences/ilyomix.Cadran.plist",
  ]
end
