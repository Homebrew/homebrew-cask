cask "cog" do
  version "1586,42a6738e"
  sha256 "19c00ac5e6f57d3ab10e86fef24f2a4963dfd23669c1f166e30f93b691305334"

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
