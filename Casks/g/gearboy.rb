cask "gearboy" do
  arch arm: "arm", intel: "intel"

  version "3.7.4"
  sha256 arm:   "842f74e38844d4eccba88041c61a2d8974995af1a1dd67cb48ebdabfe9b1297c",
         intel: "22b752750afe23ea591a1f6ceb36b5c51ad78ec667feecd7a65b228466adf71e"

  url "https://github.com/drhelius/Gearboy/releases/download/#{version}/Gearboy-#{version}-macos-#{arch}.zip"
  name "Gearboy"
  desc "Game Boy and Game Boy Color emulator"
  homepage "https://github.com/drhelius/Gearboy"

  livecheck do
    url :url
    strategy :github_latest
  end

  container nested: "Gearboy.app.zip"

  app "Gearboy.app"

  zap trash: "~/Library/Saved Application State/me.ignaciosanchez.Gearboy.savedState"
end
