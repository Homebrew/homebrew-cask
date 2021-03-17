cask "cinderella" do
  version "3.0b.1989"

  if Hardware::CPU.intel?
    sha256 "bf53c41a6f8639a48826958ecc9ce293afd651500865de0c1a17eb42f13f43fa"
    url "https://beta.cinderella.de/Cinderella-#{version}.dmg"
  else
    sha256 "7072d4410077646f6013a352ae620aa2e7a2b4099b4926c2494dce8c8300b336"
    url "https://beta.cinderella.de/Cinderella-silicon-#{version}.dmg"
  end
  name "Cinderella"
  desc "Interactive Geometry Software"
  homepage "https://cinderella.de/"

  app "Cinderella.app"

  zap trash: [
    "~/Library/Preferences/cinderella2-user.properties",
    "~/Library/Preferences/cinderella2-global.properties",
  ]
end
