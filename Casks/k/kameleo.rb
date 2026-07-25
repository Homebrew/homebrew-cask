cask "kameleo" do
  version "5.0.1"
  sha256 "965aac9a10fabec7c17338f5ae5f41870e140a2d5adeece044c165e96e9b060d"

  url "https://github.com/kameleo-io/kameleo/releases/download/#{version}/kameleo-#{version}-osx-arm64.dmg",
      verified: "github.com/kameleo-io/kameleo/"
  name "Kameleo"
  desc "Antidetect browser to bypass anti-bot systems"
  homepage "https://kameleo.io/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Kameleo.app"

  zap trash: "~/Library/Application Support/Kameleo"
end
