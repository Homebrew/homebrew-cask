cask "cog" do
  version "1755,92d29e7a"
  sha256 "a8aad3fa1fa4d9b7e71eec6e83dc100e63cefa0e204c5899e6c3c77d0cfa24fc"

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
