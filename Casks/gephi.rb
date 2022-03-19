cask "gephi" do
  version "0.9.2"
  sha256 "e83641108bcab4326526293acf2da48ac107c95b811d7f23e1fc1c621489f097"

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos.dmg",
      verified: "github.com/gephi/gephi/"
  name "Gephi"
  desc "Utility to visualize and explore GraphViz graphs"
  homepage "https://gephi.org/"

  app "Gephi.app"
end
