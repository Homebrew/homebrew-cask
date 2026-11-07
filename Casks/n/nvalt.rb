cask "nvalt" do
  version "3.0.31,160"
  sha256 "140a39b349d8842a088763ceb113fe4d2197106a7cd5ae2a5babf0f2b0d30c9b"

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
