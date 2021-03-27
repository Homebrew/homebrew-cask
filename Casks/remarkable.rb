cask "remarkable" do
  version "2.5.0"
  sha256 "ec6242a123c33af8a1d4d6d476b54889698d9e5d3bff73551ae9bb7eacb3439f"

  url "https://downloads.remarkable.com/desktop/production/mac/reMarkable-#{version}.dmg"
  name "ReMarkable"
  desc "Desktop application enables you to view, organize, import, and download files"
  homepage "https://www.remarkable.com/"

  app "reMarkable.app"
end
