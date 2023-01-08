cask "gephi" do
  version "0.10.0"
  sha256 "8bb3af6e2a32a3745edc342209d90438365227b40dd477e05522c497b2e2bccf"

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos-x64.dmg",
      verified: "github.com/gephi/gephi/"
  name "Gephi"
  desc "Open-source platform for visualizing and manipulating large graphs"
  homepage "https://gephi.org/"

  app "Gephi.app"
end
