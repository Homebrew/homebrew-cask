cask "nucleo" do
  arch arm: "-silicon"

  version "4.1.5"
  sha256 arm:   "e00a1cd35926887f72932b59a8ef95826832dbe49d5e8f758bcd038a0042c184",
         intel: "ad7484b454cc2a343aa3bfbb1bd4d3c9662d56626e692ba35741ec216b7300ff"

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
