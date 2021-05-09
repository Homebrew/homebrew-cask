cask "jasper" do
  version "1.0.3"
  sha256 "834c447a41b6cd11401b23ca4f77a72549a2822dde27d68557374e1d2b078ede"

  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac.zip",
      verified: "github.com/jasperapp/jasper/"
  name "Jasper"
  desc "Issue reader for GitHub"
  homepage "https://jasperapp.io/"

  app "Jasper.app"

  zap trash: [
    "~/Library/Application Support/jasper",
    "~/Library/Containers/io.jasperapp",
  ]
end
