cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2022.816.0"

  on_intel do
    sha256 "82e0afd45f06f624694c967d67f8637b57a55a86b7f89278b4ec97fdc27b670c"
  end
  on_arm do
    sha256 "2c786285276f847ec1277c54f494b07c9c6c221307dc3923e16e8b4c00156947"
  end

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
