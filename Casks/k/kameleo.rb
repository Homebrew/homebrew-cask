cask "kameleo" do
  version "4.3.0"
  sha256 "d184faa065b89350bf0aeb4e4647556964288499c4f6db4c51305c137990b4c2"

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
