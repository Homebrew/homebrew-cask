cask "nvalt" do
  version "3.0.38,167"
  sha256 "10c63ca4775a9b8fe6677dd7b4fcbe4f4785a74aa7adbf540f7be8b444455fbe"

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
