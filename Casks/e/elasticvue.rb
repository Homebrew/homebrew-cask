cask "elasticvue" do
  arch arm: "aarch64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "0e3a96a8700dc68dbb2e7fa7f5a811868819dd2fd90de97d7bd75f9aac8e7659",
         intel: "34133f46a8d9a877e896a60b0ebf648a093ff0e131552a7f053fc983e3cb305c"

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
