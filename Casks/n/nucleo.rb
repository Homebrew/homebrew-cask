cask "nucleo" do
  arch arm: "-silicon"

  version "4.1.9"
  sha256 arm:   "d6c51a38ddde4396a27e0ea7ea284725030857cb7cd4ef5d97a51ceb840b0f19",
         intel: "72d3bb44291a27a565a4557a91705fac6735bfd5297a220159153e6e5a236a82"

  url "https://nucleo-app-releases.s3.amazonaws.com/mac#{arch}/Nucleo_#{version}.zip",
      verified: "nucleo-app-releases.s3.amazonaws.com/"
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
