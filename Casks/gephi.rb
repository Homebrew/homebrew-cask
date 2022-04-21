cask "gephi" do
  version "0.9.4"
  sha256 "0622a01d3bf6fc46441c438fdfc40f6cf7b4fab574d1a28d9c33795420e56cf1"

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos-x64.dmg",
      verified: "github.com/gephi/gephi/"
  name "Gephi"
  desc "Open-source platform for visualizing and manipulating large graphs"
  homepage "https://gephi.org/"

  app "Gephi.app"
end
