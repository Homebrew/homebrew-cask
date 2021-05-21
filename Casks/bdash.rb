cask "bdash" do
  version "1.10.2"
  sha256 "7e90357c2e81c809003fd999d613c976bc97aa3c199f2acbe7fa6a53d4e5b26c"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
