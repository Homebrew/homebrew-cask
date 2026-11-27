cask "asyar" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "48899cca1d8e2d540663628b2ae438023eec62a613b3d7eac533deca9b5a075e",
         intel: "354e830f5dc4a69bf21b4125026d58a0e501011a0e3cbd6fb16e57617334fa7d"

  url "https://github.com/Xoshbin/asyar/releases/download/v#{version}/asyar_#{version}_#{arch}.dmg"
  name "Asyar"
  desc "Extensible launcher and productivity toolbox"
  homepage "https://asyar.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "asyar.app"

  zap trash: [
    "~/Library/Application Support/org.asyar",
    "~/Library/Application Support/org.asyar.app",
    "~/Library/Caches/org.asyar",
    "~/Library/Caches/org.asyar.app",
    "~/Library/HTTPStorages/org.asyar",
    "~/Library/HTTPStorages/org.asyar.app",
    "~/Library/Logs/org.asyar",
    "~/Library/Preferences/org.asyar.app.plist",
    "~/Library/Preferences/org.asyar.plist",
    "~/Library/Saved Application State/org.asyar.app.savedState",
    "~/Library/Saved Application State/org.asyar.savedState",
    "~/Library/WebKit/org.asyar",
    "~/Library/WebKit/org.asyar.app",
  ]
end
