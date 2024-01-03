cask "nucleo" do
  version "4.0.1"
  sha256 "dfc3145b056065481994e81d84882dda805207c65481744576f66c2ccedcfadb"

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
