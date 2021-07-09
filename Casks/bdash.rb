cask "bdash" do
  version "1.11.1"
  sha256 "4eff56db3461e5703a3917aee18b2807566aa26fe3fb1aab76fa0c2587c416e1"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
