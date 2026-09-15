cask "macai" do
  version "2.4.3"
  sha256 "4c558cd7e673a5f9a34a240a4739678c6940d6d6824f6cfe3317edfeb9eb4d22"

  url "https://renset.dev/macai/macai%20#{version}%20Universal.zip"
  name "macai"
  desc "Native chat application for all major LLM APIs"
  homepage "https://github.com/Renset/macai"

  livecheck do
    url "https://renset.dev/macai/appcast.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "macai.app"

  zap trash: [
    "~/Library/Application Scripts/notfullin.com.macai",
    "~/Library/Containers/notfullin.com.macai",
  ]
end
