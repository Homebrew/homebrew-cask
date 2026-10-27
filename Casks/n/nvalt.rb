cask "nvalt" do
  version "3.0.11,140"
  sha256 "20aebe208aa7509e505099f9bec9fed0dbab508eaf8f893d9cda04aaaeca32c8"

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
