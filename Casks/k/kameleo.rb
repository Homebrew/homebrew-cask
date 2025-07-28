cask "kameleo" do
  version "4.1.1"
  sha256 "810ff5d64b70b695e6d3c2ca492916dc96a8e9ce9b7c919ded1d5e222dffbd18"

  url "https://github.com/kameleo-io/releases/releases/download/#{version}/kameleo-#{version}-osx-arm64.dmg",
      verified: "github.com/kameleo-io/releases/"
  name "Kameleo"
  desc "Antidetect browser to bypass anti-bot systems"
  homepage "https://kameleo.io/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Kameleo.app"

  zap trash: "~/Library/Application Support/Kameleo"
end
