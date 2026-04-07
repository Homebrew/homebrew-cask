cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.4.2"
  sha256 arm:   "b6a72fb79f33d4717c5dd17fbe7c8e889f13278933226d0ab1c51dfe27689336",
         intel: "897e6a53717e065eec0ce037b8e09722820b58501d4a73e388524d72c20504ae"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
