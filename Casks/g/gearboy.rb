cask "gearboy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.5"
  sha256 arm:   "df236a22db6d693116cb0f63895bf70ba635e6f077aeb32fda961b49414948e4",
         intel: "aef85ca322b8085ef0a7728659ae421aac22c78310456ad679f2491a299fc383"

  url "https://github.com/drhelius/Gearboy/releases/download/#{version}/Gearboy-#{version}-desktop-macos-#{arch}.zip"
  name "Gearboy"
  desc "Game Boy and Game Boy Color emulator"
  homepage "https://github.com/drhelius/Gearboy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos
  container nested: "Gearboy.app.zip"

  app "Gearboy.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearboy.savedState"
end
