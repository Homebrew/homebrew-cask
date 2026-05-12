cask "kameleo" do
  version "4.5.0"
  sha256 "c8b7d7eb0baacaecc97a9647eca1712396ed2ca6ef5bfd5f0ad320db853a8756"

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
