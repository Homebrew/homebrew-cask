cask "kameleo" do
  version "5.2.0"
  sha256 "8acfdf89ae13ed701af53a443662bc32d2bb2d4a03ea3a6509e10b97ad61c526"

  url "https://github.com/kameleo-io/kameleo/releases/download/#{version}/kameleo-#{version}-osx-arm64.dmg"
  name "Kameleo"
  desc "Antidetect browser to bypass anti-bot systems"
  homepage "https://kameleo.io/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Kameleo.app"

  zap trash: "~/Library/Application Support/Kameleo"
end
