cask "kode54-cog" do
  version "1371,5677780a8"
  sha256 "a3d83844dc22c7b221e70f938abe52d15e33881d516af3068c5be17a4efc8f3d"

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
