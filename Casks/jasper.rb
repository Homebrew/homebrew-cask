cask "jasper" do
  version "1.1.0"

  arch arm: "arm64", intel: "x64"
  on_intel do
    sha256 "06a8acb5ae64201651ab6ff12af8c435d36ee7ad26b9277a006d2b4f40f0ff85"
  end
  on_arm do
    sha256 "182b338d7095dc0ffe6e70749a69489de1b8c32f564dfb514b3b5bc67c869c03"
  end

  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac_#{arch}.zip",
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
