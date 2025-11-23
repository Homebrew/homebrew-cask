cask "elasticvue" do
  arch arm: "aarch64", intel: "x64"

  version "1.11.0"
  sha256 arm:   "45aac2de78086a8518bd3e6eaf8b1a2a15ba09819bd9acfe91238b6375bf1a8c",
         intel: "52baaabdf9d193838f30e57be8d79c85c8192d1c3ed88167d5132f9fad35f9ee"

  url "https://github.com/cars10/elasticvue/releases/download/v#{version}/elasticvue_#{version}_#{arch}.dmg"
  name "Elasticvue"
  desc "Elasticsearch GUI"
  homepage "https://github.com/cars10/elasticvue"

  app "elasticvue.app"

  zap trash: [
    "~/Library/Caches/com.elasticvue.app",
    "~/Library/WebKit/com.elasticvue.app",
  ]
end
