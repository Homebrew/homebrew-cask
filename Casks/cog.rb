cask "cog" do
  version "1698,0e8f417e"
  sha256 "4e967ddc73e94ca3455379e0d3bf2d2f62eddf32cf28707c24098fab46ab76e6"

  url "https://f.losno.co/cog/Cog-#{version.csv.second}.zip"
  name "Cog"
  desc "Audio player"
  homepage "https://cog.losno.co/"

  livecheck do
    url "https://f.losno.co/file/balde-losno-co/cog/mercury.xml"
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
