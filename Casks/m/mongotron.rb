cask "mongotron" do
  version "1.0.0-alpha.5"
  sha256 "b20d014ae3a9355a112f84d98d2f81c27d3f99fd2dd7dc3455be465b27ab1e20"

  url "https://github.com/officert/mongotron/releases/download/#{version}/Mongotron-darwin-x64.zip",
      verified: "github.com/officert/mongotron/"
  name "Mongotron"
  desc "Mongo DB management"
  homepage "https://mongotron.io/"

  # This cask uses an unstable version and this `livecheck` block is only used
  # to prevent livecheck from skipping pre-release versions by default. This
  # should be removed/updated if the cask is updated to a stable version.
  livecheck do
    url :url
  end

  app "Mongotron-darwin-x64/Mongotron.app"

  zap trash: [
    "~/Library/Application Support/Mongotron",
    "~/Library/Caches/Mongotron",
  ]
end
