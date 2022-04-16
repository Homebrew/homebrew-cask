cask "gephi" do
  version "0.9.3"
  sha256 "ccaff4805c05ba45cf06c6ecd9e0438877dc4c32b5babe43419d415e4f76002f"

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos-x64.dmg",
      verified: "github.com/gephi/gephi/"
  name "Gephi"
  desc "Open-source platform for visualizing and manipulating large graphs"
  homepage "https://gephi.org/"

  app "Gephi.app"
end
