cask "shotcut" do
  version "21.05.01"

  if Hardware::CPU.intel?
    sha256 "f58990467a4879de43a7c0a35c07c5aec07a8f7d0e5bdfc60a48338edaee4134"

    url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg",
        verified: "github.com/mltframework/shotcut/"
  else
    sha256 "261852a754ebd640bd35cff65958b4b4c038f54ed4277b85e82083bc872dc646"

    url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-ARM64-#{version.no_dots}.dmg",
        verified: "github.com/mltframework/shotcut/"
  end

  name "Shotcut"
  desc "Video editor"
  homepage "https://www.shotcut.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Shotcut.app"
end
