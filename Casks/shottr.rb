cask "shottr" do
  version "1.4.8"
  sha256 "67f8c2d12406bd76b0b8aca4670269a26066fb79b71a111df520b0758eaabeb5"

  url "https://shottr.cc/dl/Shottr-#{version}.dmg"
  name "Shottr"
  desc "Screenshot measurement and annotation tool"
  homepage "https://shottr.cc/"

  livecheck do
    url :homepage
    regex(/Shottr-(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Shottr.app"

  zap trash: [
    "~/Library/Application Scripts/cc.ffitch.shottr",
    "~/Library/Application Scripts/cc.ffitch.shottr-LaunchAtLoginHelper",
    "~/Library/Containers/cc.ffitch.shottr",
    "~/Library/Containers/cc.ffitch.shottr-LaunchAtLoginHelper",
  ]
end
