cask "jsui" do
  version "0.0.25"
  sha256 "c262c5875ff90521a7785b17de011acb3dce54e67e124c64ec005b87ef897736"

  url "https://github.com/kitze/JSUI/releases/download/v#{version}/JSUI-#{version}-mac.zip"
  name "JSUI"
  desc "UI toolkit for managing JavaScript apps"
  homepage "https://github.com/kitze/JSUI"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "JSUI.app"

  zap trash: "~/Library/Application Support/jsui"
end
