cask "nvalt" do
  version "3.0.16,145"
  sha256 "ffcc9d6ec2873c36e8abcc9ae329e40600989f7dcf127d622fc6d37aef02387b"

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
