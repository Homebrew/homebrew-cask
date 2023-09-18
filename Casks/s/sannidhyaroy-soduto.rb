cask "sannidhyaroy-soduto" do
  version "2.0.3-nightly"
  sha256 "d0e7350b14e87253f93be36b6a04ee80831d8636b60a74fbf1d6ac0e455a6392"

  url "https://github.com/sannidhyaroy/Soduto/releases/download/v#{version}/Soduto.Nightly.dmg",
      verified: "github.com/sannidhyaroy/Soduto/"
  name "Soduto"
  desc "Communicate and share information between devices"
  homepage "https://soduto.thenoton.com/"

  depends_on macos: ">= :sierra"

  app "Soduto.app"

  zap trash: [
    "~/Library/Containers/com.soduto.Soduto",
    "~/Library/Containers/com.soduto.SodutoBrowser",
    "~/Library/Containers/com.soduto.SodutoLauncher",
    "~/Library/Saved Application State/com.soduto.SodutoBrowser.savedState",
  ]
end
