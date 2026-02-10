cask "novation-play" do
  version "1.0.0"
  sha256 "5d664d6fbf59c4f7f54cbb438bec9b92b15b1d9df1f66a9074b3714bf931d9c4"

  url "https://play.novationmusic.com/Play_#{version.dots_to_underscores}.dmg"
  name "Novation Play"
  desc "Virtual instrument for Novation Launchkey MK4 hardware"
  homepage "https://novationmusic.com/software/novation-play/"

  livecheck do
    url "https://klevgrand.com/api/play/version"
    strategy :json do |json|
      json ["version"]
    end
  end

  depends_on macos: ">= :ventura"

  pkg "Play.pkg"

  uninstall pkgutil: "com.novation.pkg.play*"

  zap trash: [
    "/Library/Application Support/Novation/Play",
    "~/Library/Application Support/Novation/Play",
    "~/Library/Caches/com.Novation.Play",
    "~/Library/HTTPStorages/com.Novation.Play",
  ]
end
