cask "nucleo" do
  arch arm: "-silicon"

  version "4.1.6"
  sha256 arm:   "c1a44d0ebfcb74cb6a4ef925d3d639efbb2d7cd4491c12f994da9287d98d90da",
         intel: "46b392aa93e1a1098764fe8487d41d79ab234f5c1c3999a83cb9f02abadb7830"

  url "https://nucleo-app-releases.s3.amazonaws.com/mac#{arch}/Nucleo_#{version}.zip",
      verified: "nucleo-app-releases.s3.amazonaws.com/"
  name "Nucleo"
  desc "Icon manager and library"
  homepage "https://nucleoapp.com/"

  livecheck do
    url "https://nucleoapp.com/updates"
    regex(/href=.*?Nucleo[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :catalina"

  app "Nucleo.app"

  zap trash: [
    "~/Library/Application Support/Nucleo",
    "~/Library/Logs/Nucleo",
    "~/Library/Preferences/co.ambercreative.nucleo.plist",
    "~/Library/Saved Application State/co.ambercreative.nucleo.savedState",
  ]
end
