cask "tableflip" do
  version "1.4.1"
  sha256 "aa9e26c15dbaf840f9bdb75b47e59e22276a7ec3143491f6988f09cb82a6a716"

  url "https://update.christiantietze.de/tableflip/v#{version.major}/TableFlip-v#{version}.zip",
      verified: "update.christiantietze.de/tableflip/"
  name "TableFlip"
  desc "App to edit markdown files in place"
  homepage "https://tableflipapp.com/"

  livecheck do
    url "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "TableFlip.app"
end
