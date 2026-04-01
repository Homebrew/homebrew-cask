cask "kameleo" do
  version "4.4.0"
  sha256 "effe2420c98e4c08ae5d55793b437c056d0e61462440ca1e9c47f2682c31d7a8"

  url "https://github.com/kameleo-io/kameleo/releases/download/#{version}/kameleo-#{version}-osx-arm64.dmg",
      verified: "github.com/kameleo-io/kameleo/"
  name "Kameleo"
  desc "Antidetect browser to bypass anti-bot systems"
  homepage "https://kameleo.io/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "Kameleo.app"

  zap trash: "~/Library/Application Support/Kameleo"
end
