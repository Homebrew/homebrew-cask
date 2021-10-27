cask "cog" do
  version "1611,1fd160dc"
  sha256 "e14481f036b57ee367a877854b64082ce9b68fb505bc6214ff78fb9903a13c4a"

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
