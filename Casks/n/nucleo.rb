cask "nucleo" do
  version "4.0.2"
  sha256 "aebe29eba85195ec6546a62df8404f95207cd08a5539b65d1031ead1120c8368"

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
