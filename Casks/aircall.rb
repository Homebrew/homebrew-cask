cask "aircall" do
  version "2.16.1"
  sha256 "6c2a16742e645ed7c86483014f8800ff6e3e83d3099a41758eab38feaf8bc5ea"

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
