cask "lap" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "5cc7b9563f130540bb678534d299356ab08e8f7743b92ed6abd72d4bd1abeb7c",
         intel: "f32866482ce1f6a6620caf8c7f6e9472929dac0cd7aa380e3d54df1a53790c79"

  url "https://github.com/julyx10/lap/releases/download/v#{version}/Lap_#{version}_#{arch}.dmg"
  name "Lap"
  desc "Local-first photo manager"
  homepage "https://julyx10.github.io/lap/"

  auto_updates true
  depends_on macos: :ventura

  app "Lap.app"

  zap trash: [
    "~/Library/Application Support/com.julyx10.lap",
    "~/Library/Caches/com.julyx10.lap",
    "~/Library/Preferences/com.julyx10.lap.plist",
    "~/Library/WebKit/com.julyx10.lap",
  ]
end
