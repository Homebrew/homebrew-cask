cask "karing" do
  version "1.2.26.2933"
  sha256 "a8b7872a0059ec2c860b1dd2b8d4b606406a0c26bf3f28ddbe01a62a89c6aa6d"

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
