cask "kameleo" do
  version "4.2.0"
  sha256 "f3daf5cfabb92a10a039ab912ea563fe27b3719df9cc5e970e1267014320a74c"

  url "https://github.com/kameleo-io/releases/releases/download/#{version}/kameleo-#{version}-osx-arm64.dmg",
      verified: "github.com/kameleo-io/releases/"
  name "Kameleo"
  desc "Antidetect browser to bypass anti-bot systems"
  homepage "https://kameleo.io/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "Kameleo.app"

  zap trash: "~/Library/Application Support/Kameleo"
end
