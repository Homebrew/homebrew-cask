cask "gephi" do
  version "0.9.6"
  sha256 "dcbea35143687f2c691aa399f776f8aa02996138adb5f9170bf383de3192a387"

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos-x64.dmg",
      verified: "github.com/gephi/gephi/"
  name "Gephi"
  desc "Open-source platform for visualizing and manipulating large graphs"
  homepage "https://gephi.org/"

  app "Gephi.app"
end
