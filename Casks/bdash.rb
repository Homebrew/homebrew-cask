cask "bdash" do
  version "1.14.4"
  sha256 "9584dcbafa2230b0259000ba5b1f374a5b168424167e9f2ea397c11a1f3a2395"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
