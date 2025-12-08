cask "elasticvue" do
  arch arm: "aarch64", intel: "x64"

  version "1.11.1"
  sha256 arm:   "574fd0d6cec2e3e68f8619d05d1f86e9e4181d85d72bd8a5ee8a037986c029ff",
         intel: "8fd57975ccae874e27c2a98d17eb8bb0dcd2d6f555ab3e74f6e8b9de150e6559"

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
