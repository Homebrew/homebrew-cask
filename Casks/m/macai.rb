cask "macai" do
  version "2.3.0"
  sha256 "077ebd9cb10c8ed110e32507f2f362bf7c31666c9b9e90f3071d1ac785922c77"

  url "https://renset.dev/macai/macai%20#{version}%20Universal.zip",
      verified: "renset.dev/macai/"
  name "macai"
  desc "Native chat application for all major LLM APIs"
  homepage "https://github.com/Renset/macai"

  livecheck do
    url "https://renset.dev/macai/appcast.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "macai.app"

  zap trash: [
    "~/Library/Application Scripts/notfullin.com.macai",
    "~/Library/Containers/notfullin.com.macai",
  ]
end
