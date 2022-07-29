cask "gather" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.3.2"

  if Hardware::CPU.intel?
    sha256 "40fb91d142429b651b7d2c4b77d3628603bd3953bacfbe35478025f4da3ed123"
  else
    sha256 "eaf7046e35bdebbce46e19b96ac02db6c3e26bbb43c29bce875c674c67f293d8"
  end

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: "~/Library/Application Support/Gather"
end
