cask "kode54-cog" do
  version "1382,dce400435"
  sha256 "a5431af393dc353897c1715c3cae18eafb61e7032616bad105aab49c2e45ae7f"

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
