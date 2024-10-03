cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.7.1"
  sha256 arm:   "3cc95741910aa08315cf66824938ef34ce02a1eebfabe5bbcb78f3891dd60ca8",
         intel: "ecb5bb403b627706c2958fe28655a5bbed16ce1d283ac88bd0505d840e01451b"

  url "https://github.com/freedomofpress/dangerzone/releases/download/v#{version}/Dangerzone-#{version}-#{arch}.dmg",
      verified: "github.com/freedomofpress/dangerzone/"
  name "Dangerzone"
  desc "Convert potentially dangerous PDFs or Office documents into safe PDFs"
  homepage "https://dangerzone.rocks/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dangerzone.app"

  zap trash: [
    "~/Library/Application Support/dangerzone",
    "~/Library/Saved Application State/press.freedom.dangerzone.savedState",
  ]
end
