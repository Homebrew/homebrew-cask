cask "karing" do
  version "1.2.26.2923"
  sha256 "8a0dc94644e22e8b7a0b4f2dd23138add38c24f93d36f60b5ba8fe99959464cd"

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
