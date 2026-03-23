cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "21c36108dc63a85de5379da71649802981516edf34e93f66875bf7acac574683",
         intel: "3107f4851a5e33b336f90d448cfbcab481f95a73e2d05b47869c7187db0a8ba0"

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}.dmg",
      verified: "github.com/cjpais/Handy/"
  name "Handy"
  desc "Speech to text application"
  homepage "https://handy.computer/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Handy.app"

  zap trash: [
    "~/Library/Application Support/com.pais.handy",
    "~/Library/Caches/com.pais.handy",
    "~/Library/LaunchAgents/Handy.plist",
    "~/Library/WebKit/com.pais.handy",
  ]
end
