cask "elasticvue" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "0960fbe9ce21a55cfbd2b2f40684d4d8b6870c2a557b8ca15adca60d20dda069",
         intel: "46172e147960c69df1706ac513e2cbceb4d454d7544f98a2ab0ecf3dd87d7a97"

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
