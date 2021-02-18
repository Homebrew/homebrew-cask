cask "kode54-cog" do
  version "1405,1ddce2395"
  sha256 "d17615483193d60b1aa061e1c5fd7ccfd0e5e5e712e78dda7f530f99ff61266e"

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
