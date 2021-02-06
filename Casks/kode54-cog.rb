cask "kode54-cog" do
  version "1383,583b8f3cb"
  sha256 "3d1d7f0e64f6397be8e8d8a342de05cfaa83cab849c545482856cbbe1baa0cae"

  url "https://f.losno.co/cog/Cog-#{version.after_comma}.zip",
      verified: "losno.co/cog/"
  name "Cog"
  homepage "https://kode54.net/cog/"

  livecheck do
    url "https://balde.losno.co/cog/mercury.xml"
    strategy :sparkle do |item|
      item.version.split("-g", 2).join(",")
    end
  end

  auto_updates true

  app "Cog.app"
end
