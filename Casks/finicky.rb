cask "finicky" do
  version "3.3.1"
  sha256 "51156740a447bbedf5a2e20e7582b0747ac6e5811230bda324dfa6961d98d6f2"

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  name "Finicky"
  desc "Utility for customizing which browser to start"
  homepage "https://github.com/johnste/finicky"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Finicky.app"
end
