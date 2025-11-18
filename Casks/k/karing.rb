cask "karing" do
  version "1.2.6.900"
  sha256 "a88cf7782942779a66f3e1445cbcf40e497766d25937fffed6049ccd803b3621"

  url "https://github.com/KaringX/karing/releases/download/v#{version}/karing_#{version}_macos_universal.dmg",
      verified: "github.com/KaringX/karing/"
  name "Karing"
  desc "Proxy utility"
  homepage "https://karing.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Karing.app"

  uninstall quit: "com.nebula.karing"

  zap trash: [
    "~/Library/Application Scripts/com.nebula.karing",
    "~/Library/Application Scripts/group.com.nebula.karing",
    "~/Library/Containers/Karing",
    "~/Library/Group Containers/group.com.nebula.karing",
  ]
end
