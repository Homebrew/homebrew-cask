cask "pyzo" do
  arch arm: "arm64", intel: "x86_64"

  version "4.20.0"
  sha256 arm:   "6af555adbe3a3b3e42639b5b171c1c047f7517f9d6f6baacb4e21c60596d0803",
         intel: "14f4be6d69afd0db8502e8e706c4d207a8df4aea3718666efb66ec3c5cb1f040"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_#{arch}.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
