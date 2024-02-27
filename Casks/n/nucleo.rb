cask "nucleo" do
  version "4.1.0"
  sha256 "eed2d105f3f8c53ec052014c05165e63780e33a0f532fae1a188a56db9e91e9e"

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
