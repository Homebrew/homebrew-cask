cask "nvalt" do
  version "2.2.8,128"
  sha256 "85420c2a8d505a580b4aa4f0ef4662f08aa4af6139fb4ed448752b6b6e8fd671"

  url "https://updates.designheresy.com/nvalt/nvALT#{version.csv.first}#{version.csv.second}.dmg",
      verified: "updates.designheresy.com/nvalt/"
  name "nvALT"
  desc "Note taking app"
  homepage "https://brettterpstra.com/projects/nvalt/"

  deprecate! date: "2024-07-27", because: :unmaintained

  app "nvALT.app"

  zap trash: [
    "~/Library/Application Support/Notational Velocity",
    "~/Library/Preferences/net.elasticthreads.nv.plist",
  ]

  caveats do
    requires_rosetta
  end
end
