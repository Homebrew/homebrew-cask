cask "keyclu" do
  version "0.8"
  sha256 "e8b50f2182fb9184c01940af8655c4a727212d0e8c72aa2de272ab7f8a7c7fe4"

  url "https://github.com/Anze/KeyCluCask/releases/download/v#{version}/KeyClu.zip",
      verified: "github.com/Anze/KeyCluCask/"
  name "KeyClu"
  desc "Find shortcuts for any installed application"
  homepage "https://sergii.tatarenkov.name/keyclu/support/"

  depends_on macos: ">= :big_sur"

  app "KeyClu.app"

  zap trash: "~/Library/Containers/com.0804Team.KeyClu"
end
