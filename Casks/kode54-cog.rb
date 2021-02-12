cask "kode54-cog" do
  version "1396,a6aaeafdc"
  sha256 "8d97c3c274ee79baa5942c52cf50c27dc047a3ff12295e6d5293f42aec9b0952"

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
