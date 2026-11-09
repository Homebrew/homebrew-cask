cask "nvalt" do
  version "3.0.36,165"
  sha256 "6f41f2c35f6ffa90cb35c9d58eb139794795e283dddc0975e554e6d75b419da6"

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
