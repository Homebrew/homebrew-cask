cask "nucleo" do
  arch arm: "-silicon"

  version "4.1.7"
  sha256 arm:   "c23e3754c87d6e1943ed935177e52b05be607b3b9e93368d8a72f06931b4ca1b",
         intel: "05363f46795951986c070cedbcc14a21fa8260e5ce0332cef9362cd0888452d7"

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
