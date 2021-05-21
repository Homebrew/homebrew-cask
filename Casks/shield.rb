cask "shield" do
  version "1.0.1"
  sha256 "0aa119a10374f85e011c97e9d8fbab1acd55468d9d5f5bbcb5cc87ba304a43af"

  url "https://github.com/theevilbit/Shield/releases/download/#{version}/Shield.app_#{version}.zip",
      verified: "https://github.com/theevilbit/Shield"
  name "Shield"
  desc "App to protect against process injection"
  homepage "https://theevilbit.github.io/shield/"

  livecheck do
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :catalina"

  app "Shield.app"

  zap trash: "/Library/Application Support/Shield/com.csaba.fitzl.shield.preferences.plist"
end
