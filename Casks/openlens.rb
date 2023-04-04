cask "openlens" do
  arch arm: "-arm64"

  version "6.4.14"
  sha256 arm:   "27194dd31503ebfc6646b74e53886a4cd6fdc979aa7f981665ede6eeadecf50f",
         intel: "dbb71d952c571a3b2306e17aa7cfa5e876eaba86d8620fa142d428f0903f40d3"

  url "https://github.com/MuhammedKalkan/OpenLens/releases/download/v#{version}/OpenLens-#{version}#{arch}.dmg"
  name "OpenLens"
  desc "Open source build of Lens Kubernetes IDE"
  homepage "https://github.com/MuhammedKalkan/OpenLens/"

  auto_updates true

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Logs/OpenLens",
  ]
end
