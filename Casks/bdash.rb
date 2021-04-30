cask "bdash" do
  version "1.9.5"
  sha256 "b25c363f86303be096845f8aa3bec03ca24d859dfb7b716ceb7dc78f29b03db6"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
