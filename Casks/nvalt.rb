cask "nvalt" do
  version "2.2.8,128"
  sha256 "85420c2a8d505a580b4aa4f0ef4662f08aa4af6139fb4ed448752b6b6e8fd671"

  url "https://updates.designheresy.com/nvalt/nvALT#{version.csv.first}#{version.csv.second}.dmg",
      verified: "updates.designheresy.com/nvalt/"
  name "nvALT"
  desc "Note taking app"
  homepage "https://brettterpstra.com/projects/nvalt/"

  livecheck do
    url "https://updates.designheresy.com/nvalt/updates.xml"
    strategy :sparkle
  end

  app "nvALT.app"

  zap trash: [
    "~/Library/Preferences/net.elasticthreads.nv.plist",
    "~/Library/Application Support/Notational Velocity",
  ]
end
