cask "nvalt" do
  version "3.0.13,142"
  sha256 "68dc2af4cd4d9890f8379839d3e01dc1f3a2e01d3a2b57a562d1d0ec9fafc4cd"

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
    "~/Library/Preferences/net.elasticthreads.nv.plist",
  ]
end
