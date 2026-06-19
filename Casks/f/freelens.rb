cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0"
  sha256 arm:   "9ad813d525095fca030c1fd502e1dfd8747928d1188f44f1b4d3fb5ca54655d2",
         intel: "d3e6445f381a9f82135354f106f5e670b2f1e0265bd46befaf63571b2cd87e9c"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens@nightly"
  depends_on macos: :monterey

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
