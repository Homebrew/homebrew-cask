cask "kameleo" do
  version "4.2.1"
  sha256 "90d55a055fe4207ff47d464c76b0549e2c394bbb84737c692f5f461c4e7557d0"

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
