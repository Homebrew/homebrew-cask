cask "mouseless" do
  version "0.4.1"
  sha256 "12cca19cefc7b107f1ac184b5871f601c6e3332d06331f06d962eda90340dcaf"

  url "https://mouseless.click/mouseless-installer_v#{version}.dmg"
  name "Mouseless"
  desc "Mouse control with the keyboard"
  homepage "https://mouseless.click/"

  livecheck do
    url "https://api.sonuscape.net/mouseless/latest-version"
    strategy :json do |json|
      json["latest_version"]
    end
  end

  conflicts_with cask: "mouseless@preview"
  depends_on macos: ">= :monterey"

  app "Mouseless.app"

  zap trash: [
    "~/Library/Application Scripts/net.sonuscape.mouseless",
    "~/Library/Containers/net.sonuscape.mouseless",
  ]
end
