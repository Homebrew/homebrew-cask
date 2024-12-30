cask "mongotron" do
  version "1.0.0-alpha.5"
  sha256 "b20d014ae3a9355a112f84d98d2f81c27d3f99fd2dd7dc3455be465b27ab1e20"

  url "https://github.com/officert/mongotron/releases/download/#{version}/Mongotron-darwin-x64.zip"
  name "Mongotron"
  desc "Mongo DB management"
  homepage "https://github.com/officert/mongotron"

  deprecate! date: "2024-12-30", because: :unmaintained

  app "Mongotron-darwin-x64/Mongotron.app"

  zap trash: [
    "~/Library/Application Support/Mongotron",
    "~/Library/Caches/Mongotron",
  ]

  caveats do
    requires_rosetta
  end
end
