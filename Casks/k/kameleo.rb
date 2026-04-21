cask "kameleo" do
  version "4.4.1"
  sha256 "673b50d7d55a19f76aafb020cb4d96420898e9d8a0dd7d82361be98fb7b41aa3"

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
