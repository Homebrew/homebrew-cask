cask "cog" do
  version "1617,bce21b44"
  sha256 "cd40b3cce1a003b62609953fcd120bcc98c3cdfba868659a4fc48baad6485bab"

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
