cask "mouseless" do
  version "0.2.1"
  sha256 "4007da3f7f002531f5e57ef419a1648872aa17729179b6f78aaac57a255934e1"

  url "https://mouseless.click/mouseless-installer_v#{version}.dmg"
  name "mouseless"
  desc "Mouse control with the keyboard"
  homepage "https://mouseless.click/"

  livecheck do
    url "https://api.sonuscape.net/mouseless/latest-version"
    strategy :json do |json|
      json["latest_version"]
    end
  end

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Mouseless.app"

  zap trash: [
    "~/Library/Application Scripts/net.sonuscape.mouseless",
    "~/Library/Containers/net.sonuscape.mouseless",
  ]
end
