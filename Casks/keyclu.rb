cask "keyclu" do
  version "0.7"
  sha256 "e7c935ffc69076f00daae2c3f8b77688aa3b84950e23d2fee0a441247c9995d9"

  url "https://github.com/Anze/KeyCluCask/releases/download/v#{version}/KeyClu.zip",
      verified: "github.com/Anze/KeyCluCask/"
  name "KeyClu"
  desc "Find shortcuts for any installed application"
  homepage "https://sergii.tatarenkov.name/keyclu/support/"

  depends_on macos: ">= :big_sur"

  app "KeyClu.app"

  zap trash: "~/Library/Containers/com.0804Team.KeyClu"
end
