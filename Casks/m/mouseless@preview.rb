cask "mouseless@preview" do
  version "0.4.0-preview.0"
  sha256 "8016d617bcfa4cff8a2cf7476ade22964211e7a8df2cc526b5abcbaffd3de225"

  url "https://mouseless.click/mouseless-installer_v#{version}.dmg"
  name "mouseless preview channel"
  desc "Mouse control with the keyboard"
  homepage "https://mouseless.click/"

  livecheck do
    url "https://api.sonuscape.net/mouseless/latest-version"
    strategy :json do |json|
      json["latest_preview_version"]
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
