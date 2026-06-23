cask "terax" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "a25cc6d2e2dd958bccbbb83045d31cda55780af2f617850a6df3c59e077774c4",
         intel: "d80372ab32d6782e6192ffd9bdafd3756efc44ad01391d8d59b60c2c142688bb"

  url "https://github.com/crynta/terax-ai/releases/download/v#{version}/Terax_#{version}_#{arch}.dmg",
      verified: "github.com/crynta/terax-ai/"
  name "Terax"
  desc "Terminal-first AI-native developer workspace"
  homepage "https://terax.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "Terax.app"

  zap trash: [
    "~/Library/Application Support/app.crynta.terax",
    "~/Library/Caches/app.crynta.terax",
    "~/Library/Logs/app.crynta.terax",
    "~/Library/WebKit/app.crynta.terax",
  ]
end
