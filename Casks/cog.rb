cask "cog" do
  version "1621,58384cb8"
  sha256 "119b646305ff345915778a887deb451a98654a3874581e3baafa1ecafc395877"

  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name "Cog"
  desc "Audio player"
  homepage "https://cog.losno.co/"

  livecheck do
    url "https://balde.losno.co/cog/mercury.xml"
    strategy :sparkle do |item|
      item.version.split("-g", 2).join(",")
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Cog.app"

  uninstall quit: "org.cogx.cog"

  zap trash: [
    "~/Library/Application Support/Cog",
    "~/Library/Caches/org.cogx.cog",
  ]
end
