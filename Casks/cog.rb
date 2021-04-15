cask "cog" do
  version "1490,4ea289ba"
  sha256 "8e144442d314e08304c6bd31e633a07059189ef43dc678599b233e1f781deebc"

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
