cask "keyclu" do
  version "0.6"
  sha256 "c5baddc31764f1086090cd051997b74589ca61a07ecfac168655d85322e065fe"

  url "https://github.com/Anze/KeyCluCask/releases/download/v#{version}/KeyClu.zip",
      verified: "github.com/Anze/KeyCluCask/"
  name "KeyClu"
  desc "Simple and handy overview of all shortcuts for any application you have"
  homepage "https://sergii.tatarenkov.name/keyclu/support/"

  depends_on macos: ">= :big_sur"

  app "KeyClu.app"

  zap trash: [
    "~/Library/Containers/com.0804Team.KeyClu",
  ]
end
