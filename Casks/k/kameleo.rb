cask "kameleo" do
  version "5.4.0"
  sha256 "2ef94f13f87029d653bd28ce24f207e0b84012dc90a238f6a31a742816d0b86d"

  url "https://github.com/kameleo-io/kameleo/releases/download/#{version}/kameleo-#{version}-osx-arm64.dmg"
  name "Kameleo"
  desc "Antidetect browser to bypass anti-bot systems"
  homepage "https://kameleo.io/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Kameleo.app"

  zap trash: "~/Library/Application Support/Kameleo"
end
