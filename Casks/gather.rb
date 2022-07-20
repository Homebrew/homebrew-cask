cask "gather" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.3.1"

  if Hardware::CPU.intel?
    sha256 "26ea3843a23b7b76c76525270f02f1971c394c28b072391c766dfab9fc14f6d3"
  else
    sha256 "615eb42de1d110c1a43095e8bbf1b592581918ebfe254ab657ad6951a2539722"
  end

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: "~/Library/Application Support/Gather"
end
