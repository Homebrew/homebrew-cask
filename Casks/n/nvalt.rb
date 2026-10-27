cask "nvalt" do
  version "3.0.7,136"
  sha256 "65dfe891b3b33b34964cf76759cf1f324d89834ddf0979dc6c8584cb2781b2da"

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
