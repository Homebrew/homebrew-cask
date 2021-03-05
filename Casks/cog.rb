cask "cog" do
  version "1430,e8c6a00d9"
  sha256 "1b295dcd563308ee5647e453ee904cb918dfe3c56cfb84f60933e0a822697866"

  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip"
  name "Cog"
  desc "Free and open source audio player"
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
    "~/Library/Caches/org.cogx.cog",
    "~/Library/Application Support/Cog",
  ]
end
