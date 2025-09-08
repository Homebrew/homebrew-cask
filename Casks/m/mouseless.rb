cask "mouseless" do
  version "0.4.0"
  sha256 "476ac7b728926c63d89b3235d9d2a8ae2ef0cecea7ed3465bdadd0f10a888cc8"

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
