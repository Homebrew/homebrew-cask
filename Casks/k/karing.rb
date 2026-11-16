cask "karing" do
  version "1.2.26.2932"
  sha256 "3631628da559b802aebb8435431f2f0aa01da132cb2a87985abc636fcb4369fc"

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
