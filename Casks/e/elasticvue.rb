cask "elasticvue" do
  arch arm: "aarch64", intel: "x64"

  version "1.13.0"
  sha256 arm:   "346b4522cc188f9992f2bc82d23953479614330c2e5ee170b21964028589a97c",
         intel: "15a82f56b22bf6f57236d18956130a1e277ccec39dae2a21529b3ab90faab99a"

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
