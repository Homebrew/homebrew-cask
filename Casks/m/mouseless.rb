cask "mouseless" do
  version "0.2.2"
  sha256 "957b5562a902a4a4f827d1ac6d30e8da6430aec80f1bfeb4fbbff79463d0fe7c"

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
