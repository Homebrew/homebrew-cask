cask "kameleo" do
  version "5.0.0"
  sha256 "52dad78e0779d64ea62dad598c42f8801bae20bc334d8d35829aa584047c2319"

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
