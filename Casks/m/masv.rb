cask "masv" do
  version "2.11.5"
  sha256 "a26921c38aa9ab97596948451ccd46f5bd40cac4ea279de3d886b537345c1a33"

  url "https://dl.massive.io/masv-#{version}-universal.dmg"
  name "MASV"
  desc "Transfers large media files at high speed"
  homepage "https://massive.io/"

  livecheck do
    url "https://dl.massive.io/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :big_sur

  app "MASV.app"

  uninstall quit: "io.masv.desktop"

  zap trash: [
    "~/Library/Caches/io.masv.desktop",
    "~/Library/HTTPStorages/io.masv.desktop",
    "~/Library/Preferences/io.masv.desktop.plist",
    "~/Library/Saved Application State/io.masv.desktop.savedState",
  ]
end
