cask "aircall" do
  version "2.15.5"
  sha256 "040778e94281364f9aa4e4d55b81630d77e3f510af376874d1a4afb8d4d83349"

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
