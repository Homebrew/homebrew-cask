cask "nucleo" do
  version "4.1.1"
  sha256 "9498d88fc2fe8dd9aaac31b77569f68190e675be9d5a3fad7aa9ab3775d615f1"

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
