cask "laverna" do
  version "0.7.51"
  sha256 "b5008b0bb25036265b179d3ad0b097de4ee95de75d4ef87ff848dc085395ab50"

  url "https://github.com/Laverna/laverna/releases/download/#{version}/laverna-#{version}-darwin-x64.zip",
      verified: "github.com/Laverna/laverna/"
  name "Laverna"
  homepage "https://laverna.cc/"

  app "laverna.app"
end
