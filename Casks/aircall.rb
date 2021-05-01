cask "aircall" do
  version "2.15.3"
  sha256 "6777fe2dce13266bb22f4616b18c1e9bb199c478da72cc2d5e37c4b26da2352b"

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
