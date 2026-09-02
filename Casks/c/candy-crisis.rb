cask "candy-crisis" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "mac.dmg", linux: "linux-#{arch}.AppImage"

  version "3.0.0"

  on_macos do
    sha256 "4c3359332d950e2836f9279c8ed1cb32e3c271e5dccb182134364976b4ef2095"

    app "Candy Crisis.app"

    zap trash: [
      "~/Library/Application Support/CandyCrisis",
      "~/Library/Containers/com.cc.Candy-Crisis",
      "~/Library/Saved Application State/io.jor.candycrisis.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "ac8adb2ba1fdd9c6345f430bd0a01e15c8d3a8f62c482d52da8fa0d5dd321f6a",
           x86_64_linux: "92e2bea04785fc4a69b3bbd830d3bfe90f35e0659d5dbae1f2cb875fe3bb6feb"

    app_image "CandyCrisis-#{version}-linux-#{arch}.AppImage", target: "Candy Crisis.AppImage"
  end

  url "https://github.com/jorio/CandyCrisis/releases/download/v#{version}/CandyCrisis-#{version}-#{url_end}"
  name "Candy Crisis"
  desc "Tile matching puzzle/action game"
  homepage "https://candycrisis.sourceforge.net/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
