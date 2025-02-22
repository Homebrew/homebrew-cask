cask "mouseless" do
  version "0.3.1"
  sha256 "79845fb27a9748473e60e9f9bde8fd3b0a3d0dec7eea22c38b0cc49905dba779"

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
