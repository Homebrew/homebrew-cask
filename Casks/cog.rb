cask "cog" do
  version "1484,d06eec4f"
  sha256 "85d7f58a12d128ec5d1908a27eebad05faaab5525ae46b4f701903baad6d6c89"

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
