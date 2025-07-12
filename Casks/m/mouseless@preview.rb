cask "mouseless@preview" do
  version "0.4.0-preview.4"
  sha256 "2f558b04bc9d352abb1ddb143ea2888948c5bccae11d44340775ce8e8bdcdc07"

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

  conflicts_with cask: "mouseless"
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Mouseless.app"

  zap trash: [
    "~/Library/Application Scripts/net.sonuscape.mouseless",
    "~/Library/Containers/net.sonuscape.mouseless",
  ]
end
