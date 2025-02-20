cask "mouseless" do
  version "0.3.0"
  sha256 "8743d6fbe072f42cf6f2466d57df82cbd1276e148463df391e571368414957e5"

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

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Mouseless.app"

  zap trash: [
    "~/Library/Application Scripts/net.sonuscape.mouseless",
    "~/Library/Containers/net.sonuscape.mouseless",
  ]
end
