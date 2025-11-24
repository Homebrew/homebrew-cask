cask "macai" do
  version "2.2.5"
  sha256 "8adaa57e55d2169deb95634ada61443c49ffd09d9e6e1c2dc94b17ae2d8d1645"

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
