cask "gather" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.3.3"

  if Hardware::CPU.intel?
    sha256 "c82591d95e3f58df820d30104ca0a386a8c481b4da3af34c3d96e3dea2fa8dbc"
  else
    sha256 "6b20da327d30a8fe72d9fd9f9690b0fb4e7f41ce36f12986e5658152cad2ca45"
  end

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: "~/Library/Application Support/Gather"
end
