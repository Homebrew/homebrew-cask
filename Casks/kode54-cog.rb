cask "kode54-cog" do
  version "1411,85e27e749"
  sha256 "89b3ef9d3252275338ae59ad5f74cbc39da21f132ae86d8920d3f7ec717c9bd4"

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
