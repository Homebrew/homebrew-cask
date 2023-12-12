cask "nucleo" do
  version "4.0.0"
  sha256 "01ece9c54977f862141c4e0d3d51b4df413c52f936e5ec306d0294d4899e37f6"

  url "https://nucleo-app-releases.s3-accelerate.amazonaws.com/mac/Nucleo_#{version}.zip",
      verified: "nucleo-app-releases.s3-accelerate.amazonaws.com/"
  name "Nucleo"
  desc "Icon manager and library"
  homepage "https://nucleoapp.com/"

  livecheck do
    url "https://nucleoapp.com/updates"
    regex(/href=.*?Nucleo[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Nucleo.app"

  zap trash: [
    "~/Library/Application Support/Nucleo",
    "~/Library/Logs/Nucleo",
    "~/Library/Preferences/co.ambercreative.nucleo.plist",
    "~/Library/Saved Application State/co.ambercreative.nucleo.savedState",
  ]
end
