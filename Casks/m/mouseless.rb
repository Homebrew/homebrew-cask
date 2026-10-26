cask "mouseless" do
  version "1.1.0"
  sha256 "1e3fb57febaff24f3a62e81ac14b0351167d95fcd2e446bfc688100f4b77d8b0"

  url "https://github.com/croian/mouseless/releases/download/v#{version}/mouseless-installer_v#{version}.dmg"
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
    "~/Library/Application Support/Mouseless",
    "~/Library/Containers/net.sonuscape.mouseless",
  ]
end
