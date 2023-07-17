cask "cxpatcher" do
  version "0.2.17"
  sha256 "0148892920134e4bfeff7692d191a06018665ae23ae3a83b2781740f00b1ee7c"

  url "https://github.com/italomandara/CXPatcher/releases/download/V#{version}/CXPatcher.app.zip"
  name "CXPatcher"
  desc "Patcher to upgrade CrossOver dependencies and improve compatibility"
  homepage "https://github.com/italomandara/CXPatcher"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "CXPatcher.app"

  zap trash: [
    "~/Library/Application Scripts/com.italomandara.Crossover-patcher",
    "~/Library/Containers/com.italomandara.Crossover-patcher",
  ]

  caveats <<~EOS
    CXPatcher is an unofficial patcher for CrossOver. CodeWeavers is not
    – by any means – involved in this or has anything to do with this app.

    Although it has been tested, this software may render CrossOver unusable or unstable.

    USE AT YOUR OWN RISK!

    This will also void any official support from CodeWeavers.

    It is recommended to install the gstreamer cask alongside.

      brew install --cask gstreamer
  EOS
end
