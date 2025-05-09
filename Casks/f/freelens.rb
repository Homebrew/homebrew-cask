cask "freelens" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.0"
  sha256 arm:   "187ccea3c893fd1599b2ddc7aea93dd2ceecfb03fc43a8fb84307811c65aaf59",
         intel: "5c5b6f96b0182b05adf27f6430c559287107921a3578ded2bcd03a96479a5fe3"

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  depends_on macos: ">= :high_sierra"

  app "Freelens.app"

  zap trash: [
    "~/Library/Application Support/Freelens",
    "~/Library/Logs/Freelens",
  ]
end
