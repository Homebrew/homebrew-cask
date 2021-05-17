cask "jasper" do
  version "1.0.4"
  sha256 "0682294e8a9c4d4b3fad80af3471cf043e34c055bb55239218e2f8162dbab7af"

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
