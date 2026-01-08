cask "macai" do
  version "2.3.3"
  sha256 "fe1f8a243dcb36c255718a5c51a36393de8bf88a8ca61036e6b839abd2341bef"

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
