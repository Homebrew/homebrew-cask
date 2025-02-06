cask "timeular" do
  arch arm: "-m1-arm64"
  livecheck_folder = on_arch_conditional arm: "m1", intel: "latest"

  version "6.9.1"
  sha256 arm:   "b471b68eec8ff1b262582907dc32d7abe67725cff1bce4138665b347161f8060",
         intel: "6928104197a1b5331b6e444d8b5ffff9abc133eba6ec5c1ffd7055ccfc2bea99"

  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}#{arch}.dmg",
      verified: "timeular-desktop-packages.s3.amazonaws.com/"
  name "Timeular"
  desc "Time tracking aided by a physical device"
  homepage "https://timeular.com/"

  livecheck do
    url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/#{livecheck_folder}-mac.yml"
    strategy :electron_builder do |item|
      item["version"]&.split("-")&.first
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Timeular.app"

  zap trash: [
    "~/Library/Application Support/Timeular",
    "~/Library/Logs/Timeular",
    "~/Library/Preferences/com.timeular.zei.plist",
  ]
end
