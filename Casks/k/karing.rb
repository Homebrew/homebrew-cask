cask "karing" do
  version "1.2.26.2926"
  sha256 "fd86014f259284449d7057a5940672a47cf16f90d2119fc1ade1bb28f6ddbadb"

  url "https://github.com/KaringX/karing/releases/download/v#{version}/karing_#{version}_macos_universal.dmg"
  name "Karing"
  desc "Proxy utility"
  homepage "https://karing.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Karing.app"

  uninstall quit: "com.nebula.karing"

  zap trash: [
    "~/Library/Application Scripts/com.nebula.karing",
    "~/Library/Application Scripts/group.com.nebula.karing",
    "~/Library/Containers/com.nebula.karing",
    "~/Library/Containers/Karing",
    "~/Library/Group Containers/group.com.nebula.karing",
  ]
end
