cask "bdash" do
  version "1.14.0"
  sha256 "9c61d5919ff4d125a1f98ac7fe64a94d44abc5af621e4584d7edc03f4474b710"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
