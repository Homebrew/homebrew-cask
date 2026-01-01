cask "macai" do
  version "2.3.2"
  sha256 "52f81bb218d5db0f2a42ddb044e0cb7439c50885aa4c2210dfcb5cd13fc194f4"

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
