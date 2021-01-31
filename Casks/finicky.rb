cask "finicky" do
  version "3.3.0"
  sha256 "e8c82b5dab52ac21375306049814d1c2fad221e6161c85db63619b22a89b0892"

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
