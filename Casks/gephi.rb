cask "gephi" do
  version "0.9.5"
  sha256 "a0d9f63e7b385f6c19d5016dc16808253401fd09b3d143d4cb0894323c78a8b7"

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos-x64.dmg",
      verified: "github.com/gephi/gephi/"
  name "Gephi"
  desc "Open-source platform for visualizing and manipulating large graphs"
  homepage "https://gephi.org/"

  app "Gephi.app"
end
