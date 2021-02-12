cask "mongotron" do
  version "1.0.0-alpha.5"
  sha256 "b20d014ae3a9355a112f84d98d2f81c27d3f99fd2dd7dc3455be465b27ab1e20"

  url "https://github.com/officert/mongotron/releases/download/#{version}/Mongotron-darwin-x64.zip",
      verified: "github.com/officert/mongotron/"
  appcast "https://github.com/officert/mongotron/releases.atom"
  name "Mongotron"
  desc "Mongo DB management"
  homepage "http://mongotron.io/"

  app "Mongotron-darwin-x64/Mongotron.app"

  zap trash: [
    "~/Library/Application Support/Mongotron",
    "~/Library/Caches/Mongotron",
  ]
end
