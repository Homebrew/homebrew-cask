cask "keyclu" do
  version "0.8"
  sha256 "d3ddf7c68099d64f07ddd0360f14fd844eb4aac8c957b6e3112553195f4f28c3"

  url "https://github.com/Anze/KeyCluCask/releases/download/v#{version}/KeyClu.zip",
      verified: "github.com/Anze/KeyCluCask/"
  name "KeyClu"
  desc "Find shortcuts for any installed application"
  homepage "https://sergii.tatarenkov.name/keyclu/support/"

  depends_on macos: ">= :big_sur"

  app "KeyClu.app"

  zap trash: "~/Library/Containers/com.0804Team.KeyClu"
end
