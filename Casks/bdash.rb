cask "bdash" do
  version "1.13.0"
  sha256 "f2c3ea33f774fe3f9fe4c35a34d03017a89bff566b73f5e5ad40937f7512c89d"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
