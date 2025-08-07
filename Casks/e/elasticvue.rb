cask "elasticvue" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "cd36394a4a64b658123c377b3c61ca79cc448183e295aabdbf01c48f1325e54e",
         intel: "5cd7d9844f73b86592f3a9a30323293c5a4e17b8b40df6f5383cd4bcd03f12aa"

  url "https://github.com/cars10/elasticvue/releases/download/v#{version}/elasticvue_#{version}_#{arch}.dmg"
  name "Elasticvue"
  desc "Elasticsearch GUI"
  homepage "https://github.com/cars10/elasticvue"

  depends_on macos: ">= :high_sierra"

  app "elasticvue.app"
end
