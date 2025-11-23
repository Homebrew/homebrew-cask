cask "macai" do
  version "2.2.4"
  sha256 "02f58b3ea0b9dc5408f3cffd663027f4a3011d738a2e14f01a93e8786afd55a6"

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
