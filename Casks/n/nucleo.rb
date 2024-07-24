cask "nucleo" do
  arch arm: "-silicon"

  version "4.1.4"
  sha256 arm:   "624133d70caa43292b7dbb67f8d3a29ed3eb8d1db1921bd19bec5efd61ef7b07",
         intel: "77e898fe09a14dbd350f248e8cf65e629d34279df5ba7850a64cd5251fdb8493"

  url "https://nucleo-app-releases.s3.amazonaws.com/mac#{arch}/Nucleo_#{version}.zip",
      verified: "nucleo-app-releases.s3.amazonaws.com/"
  name "Nucleo"
  desc "Icon manager and library"
  homepage "https://nucleoapp.com/"

  livecheck do
    url "https://nucleoapp.com/updates"
    regex(/href=.*?Nucleo[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Nucleo.app"

  zap trash: [
    "~/Library/Application Support/Nucleo",
    "~/Library/Logs/Nucleo",
    "~/Library/Preferences/co.ambercreative.nucleo.plist",
    "~/Library/Saved Application State/co.ambercreative.nucleo.savedState",
  ]
end
