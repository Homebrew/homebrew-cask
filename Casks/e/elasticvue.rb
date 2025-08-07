cask "elasticvue" do
  version "1.8.0"

  on_arm do
    sha256 "cd36394a4a64b658123c377b3c61ca79cc448183e295aabdbf01c48f1325e54e"

    url "https://github.com/cars10/elasticvue/releases/download/v#{version}/elasticvue_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "5cd7d9844f73b86592f3a9a30323293c5a4e17b8b40df6f5383cd4bcd03f12aa"

    url "https://github.com/cars10/elasticvue/releases/download/v#{version}/elasticvue_#{version}_x64.dmg"
  end

  name "Elasticvue"
  desc "Elasticsearch GUI"
  homepage "https://github.com/cars10/elasticvue"

  depends_on macos: ">= :high_sierra"

  app "elasticvue.app"
end
