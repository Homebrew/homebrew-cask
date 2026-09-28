cask "kameleo" do
  version "5.3.0"
  sha256 "b0c11c0eadd0178144bf75ee6bbc5f39e0c42b391bad0afa598257f7f74898dc"

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
