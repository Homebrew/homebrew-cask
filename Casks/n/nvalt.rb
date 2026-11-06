cask "nvalt" do
  version "3.0.29,158"
  sha256 "bbe60ee5790fd6249eb1f51d1793518cac70f2dd9ae30dab08afce1b3b3484a7"

  url "https://updates.designheresy.com/nvalt/nvALT#{version.csv.first}#{version.csv.second}.zip"
  name "nvALT"
  desc "Note taking app, fork of Notational Velocity"
  homepage "https://brettterpstra.com/projects/nvalt/"

  livecheck do
    url "https://updates.designheresy.com/nvalt/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "nvALT.app"

  zap trash: [
    "~/Library/Application Support/nvALT",
    "~/Library/Caches/net.elasticthreads.nv",
    "~/Library/Preferences/net.elasticthreads.nv.plist",
  ]
end
