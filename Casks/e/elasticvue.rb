cask "elasticvue" do
  arch arm: "aarch64", intel: "x64"

  version "1.10.0"
  sha256 arm:   "5a0b51d85b1570536d566c3cf95dd67b1259e0f5890b9542e55bdc7de00f51c1",
         intel: "833098852f8fcc0b2ba232b6ab9a15dd59f56856f53253fa207e00a982afab27"

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
