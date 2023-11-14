cask "osu" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2023.1114.0"
  sha256 arm:   "0067533bbb59a3fbe4842af4d9b384fff2fa53ce841b86667bddb4c83ae4816d",
         intel: "539978090a4ea22d5e1857aed546780cb3603d53b887e9ba5a5951fa4b04667b"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu!"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
