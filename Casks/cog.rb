cask "cog" do
  version "1784,8eb2b4c4"
  sha256 "b8bc880a0333ff7bb815cbc6084254cae2a316f3d2c6e75c0b0427e05cfcbc93"

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
