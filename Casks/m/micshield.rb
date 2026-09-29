cask "micshield" do
  version "1.0.0"
  sha256 "376c997db319ae4fa99566d7b3db7484a7bdcbd31a408d42ae19657b70a89920"

  url "https://github.com/kishorgaikwad2016/MicShield/releases/download/v#{version}/MicShield.dmg"
  name "MicShield"
  desc "Hardware-level microphone kill-switch and notch HUD"
  homepage "https://github.com/kishorgaikwad2016/MicShield"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "MicShield.app"

  uninstall quit: "com.anuprayog.micshield"

  zap trash: [
    "~/Library/Application Support/MicShield",
    "~/Library/Caches/com.anuprayog.micshield",
    "~/Library/HTTPStorages/com.anuprayog.micshield",
    "~/Library/Preferences/com.anuprayog.micshield.plist",
  ]
end
