cask "keyclu" do
  version "0.8.1"
  sha256 "2c83da08083872fec15adca19a5ddf3953873475a66d8118361a93a9079c098b"

  url "https://github.com/Anze/KeyCluCask/releases/download/v#{version}/KeyClu.zip",
      verified: "github.com/Anze/KeyCluCask/"
  name "KeyClu"
  desc "Find shortcuts for any installed application"
  homepage "https://sergii.tatarenkov.name/keyclu/support/"

  depends_on macos: ">= :big_sur"

  app "KeyClu.app"

  zap trash: "~/Library/Containers/com.0804Team.KeyClu"
end
