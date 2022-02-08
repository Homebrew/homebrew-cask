cask "openaudible" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.4.2"

  if Hardware::CPU.intel?
    sha256 "3cc2e12c2085a9f8f2a2c1121d42c87b8d3e5ae5534122c043540cb8055093e3"
  else
    sha256 "fbd9f033fd0201417190bed6fc8a924dc83511408daf9de7a2ce67301dd201a8"
  end

  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_#{arch}.dmg",
      verified: "github.com/openaudible/openaudible/"
  name "OpenAudible"
  desc "Audiobook manager for Audible users"
  homepage "https://openaudible.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenAudible.app"

  zap trash: "/Library/OpenAudible"
end
