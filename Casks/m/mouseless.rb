cask "mouseless" do
  version "0.4.4"
  sha256 "303ed86b35c9fb530d655c8f2f139d9f034ba421e6828e4ddaae2124a1281260"

  url "https://github.com/croian/mouseless/releases/download/v#{version}/mouseless-installer_v#{version}.dmg",
      verified: "github.com/croian/mouseless/"
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
  depends_on macos: :monterey

  app "Mouseless.app"

  zap trash: [
    "~/Library/Application Scripts/net.sonuscape.mouseless",
    "~/Library/Containers/net.sonuscape.mouseless",
  ]
end
