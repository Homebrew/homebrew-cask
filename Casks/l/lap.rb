cask "lap" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "8749d4f680f010d230939501900744823d6a1c883b699387fa35a8af54c57c0f",
         intel: "c9ad664f97e03d389f6a95fa5810ddc5f4ea6ac3d92ecf3461670d85d56419d5"

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
