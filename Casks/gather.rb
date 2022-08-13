cask "gather" do
  arch arm: "-arm64"

  version "0.3.5"

  if Hardware::CPU.intel?
    sha256 "f1fc59e1c70e02eb9b23e16689432556636c8f06c31431dab0c69786b670632f"
  else
    sha256 "ce2e0cd5792fae69b5c1f66d95f54145316e5305cd35402f954d03c06b828e3a"
  end

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: "~/Library/Application Support/Gather"
end
