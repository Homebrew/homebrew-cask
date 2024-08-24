cask "cutentr" do
  version "0.3.2"
  sha256 "4a418c7e7a8baad9c64b6ec9730421b9a5411e1c8e2183d610fc9a3e6e634e8c"

  url "https://github.com/GlimmerDev/cuteNTR-OSX/releases/download/0.3.2/cuteNTR-0.3.2.dmg"
  name "cuteNTR"
  desc "Fork of cuteNTR by BoltsJ - native 3DS NTR streaming for MacOS"
  homepage "https://github.com/GlimmerDev/cuteNTR-OSX"

  livecheck do
    url :url
    strategy :header_match
  end

  app "cuteNTR.app"

  zap trash: ["~/Library/Application Support/cuteNTR",
              "~/Library/Logs/cuteNTR",
              "~/Library/Preferences/cuteNTR.plist",
              "~/Library/Saved Application State/cuteNTR.savedState"]
end
