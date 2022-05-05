cask "nightowl" do
  version "0.3.0"
  sha256 :no_check

  url "https://nightowl.kramser.xyz/files/NightOwl.dmg"
  name "NightOwl"
  desc "Utility to toggle dark mode"
  homepage "https://nightowl.kramser.xyz/"

  livecheck do
    url "https://nightowl.kramser.xyz/api/public_update"
    regex(/"version":\s*"(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :mojave"

  app "NightOwl.app"

  zap trash: [
    "~/Library/Caches/com.fuekiin.NightOwl",
    "~/Library/Preferences/com.fuekiin.NightOwl.plist",
  ]
end
