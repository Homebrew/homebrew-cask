cask "graphsketcher" do
  version "2.0_test_46"
  sha256 "34fe6fc319b2fcfe0bf51e02bc05d020b2867ff1ee20587becb60d7e67309be6"

  url "https://github.com/graphsketcher/GraphSketcher/releases/download/v#{version}/GraphSketcher.zip"
  name "GraphSketcher"
  desc "Graph drawing and data plotting app"
  homepage "https://github.com/graphsketcher/GraphSketcher"

  app "GraphSketcher/GraphSketcher.app"
end
