cask "ariax" do
  version "1.0.3"
  sha256 "9b08b7bee08446307fb358367fa7dd20a08a7a0a38aafbf48419213c9eb8e9d0"

  url "https://github.com/saltpi/Aria.X/releases/download/#{version}/AriaX.zip"
  name "AriaX"
  desc "Aria2 download manager"
  homepage "https://github.com/saltpi/Aria.X"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "AriaX.app"

  zap trash: [
    "~/Library/Application Scripts/cn.saltpi.app.AriaX",
    "~/Library/Application Scripts/group.cn.saltpi.app.AriaX",
    "~/Library/Containers/cn.saltpi.app.AriaX",
    "~/Library/Group Containers/group.cn.saltpi.app.AriaX",
  ]
end
