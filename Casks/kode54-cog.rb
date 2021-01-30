cask "kode54-cog" do
  version "1374,0b09d1567"
  sha256 "7db3dc55d424b46bcf241d633991f0ce7da237f2b64b3a36d90249a2995e7560"

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
