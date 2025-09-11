cask "osu@tachyon" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.911.0-tachyon"
  sha256 arm:   "c46b380b2fa2f0661e2b4659ccb7eebcfdf76d38566a378429e5d5c2be8cc64f",
         intel: "91970ddb2cfa29116ab2325fc3bd1ac62ca2347e71d0f0d4f34ae45da1c64900"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu! (tachyon)"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?((\d+(?:\.\d+)+)(?:-tachyon)?)$/i)
  end

  auto_updates true
  conflicts_with cask: "osu"
  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
