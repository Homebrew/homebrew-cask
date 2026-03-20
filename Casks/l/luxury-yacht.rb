cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.16"
  sha256 arm:   "4f105380f53b1192f944765b2c28e46a6481672f42bd8aa34bea1cff6ed48939",
         intel: "2924fa7d06050540ab5b456455bbc81940e682466573d49cafb91db584d6dc4a"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
