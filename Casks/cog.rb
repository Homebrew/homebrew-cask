cask "cog" do
  version "2181,c59d4d02"
  sha256 "65443e225afbac81992cccc799ac7151189179b1ff85e0f71fe4a6fa78434cee"

  url "https://cogcdn.cog.losno.co/Cog-#{version.csv.second}.zip"
  name "Cog"
  desc "Audio player"
  homepage "https://cog.losno.co/"

  livecheck do
    url "https://cogcdn.cog.losno.co/mercury.xml"
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
