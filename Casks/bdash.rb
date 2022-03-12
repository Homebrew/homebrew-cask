cask "bdash" do
  version "1.14.2"
  sha256 "a76547720cc68112e31ef66b296adb8943198221bc1008d99e80973549f45156"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
