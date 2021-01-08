cask "kode54-cog" do
  version "1348,1aa9b5a01"
  sha256 "857b666951bab7e018b0ed6b157afd19dfdc86209d0c2a852c638a012df36f0e"

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
