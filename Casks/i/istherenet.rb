cask "istherenet" do
  version "1.5"
  sha256 "34665004bccd872c75f6718399688c87b06e396c22948d4d8576c4e50b84a2d5"

  url "https://github.com/FuzzyIdeas/IsThereNet/releases/download/v#{version}/IsThereNet.zip",
      verified: "github.com/FuzzyIdeas/IsThereNet"
  name "IsThereNet"
  desc "Watches for internet connection status changes"
  homepage "https://lowtechguys.com/istherenet/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "IsThereNet.app"

  uninstall quit:       "com.lowtechguys.IsThereNet",
            login_item: "IsThereNet"

  zap trash: [
    "~/Library/Application Scripts/com.lowtechguys.IsThereNet",
    "~/Library/Containers/com.lowtechguys.IsThereNet",
  ]
end
