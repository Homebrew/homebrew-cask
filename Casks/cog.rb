cask "cog" do
  version "1537,668475c4"
  sha256 "a735af68b139d0d5201c3866f7b781f608ee7fb10c1a2c9b9ce30deff57637ae"

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
    "~/Library/Caches/org.cogx.cog",
    "~/Library/Application Support/Cog",
  ]
end
