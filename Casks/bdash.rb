cask "bdash" do
  version "1.14.3"
  sha256 "c58132bcbd6b1daa17aa65ef16a35e2ed834b828cdfa2548010e13a0680cc2a7"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
