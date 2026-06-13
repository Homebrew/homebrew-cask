cask "automounter" do
  version "1.13"
  sha256 :no_check

  url "https://www.pixeleyes.co.nz/automounter/AutoMounter.dmg"
  name "AutoMounter"
  desc "Mounts and remounts network file shares automatically"
  homepage "https://www.pixeleyes.co.nz/automounter/"

  livecheck do
    url "https://www.pixeleyes.co.nz/automounter/version"
    regex(/([0-9]+(?:\.[0-9]+)+)/i)
  end

  depends_on macos: :ventura

  app "AutoMounter.app"

  zap trash: [
    "~/Library/Caches/nz.co.pixeleyes.AutoMounter",
    "~/Library/HTTPStorages/nz.co.pixeleyes.AutoMounter",
    "~/Library/Preferences/nz.co.pixeleyes.AutoMounter.plist",
    "~/Library/Saved Application State/nz.co.pixeleyes.AutoMounter.savedState",
  ]
end
