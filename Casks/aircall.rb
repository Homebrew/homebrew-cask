cask "aircall" do
  version "2.15.6"
  sha256 "da16db81e6ef3ea3a2d87a8e7cc06e6215847f97f1857d0e957ea8dda9d2244b"

  url "https://download-electron.aircall.io/Aircall-#{version}.zip"
  name "Aircall"
  desc "Cloud-based call center and phone system software"
  homepage "https://aircall.io/"

  livecheck do
    url "https://electron.aircall.io/download/osx"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Aircall.app"
end
