cask "agi" do
  version "3.2.1"
  sha256 "2e38ce87daf88cadaa3afaa9a6b6dce33364af1efac0f510a923d02c36104d1a"

  url "https://github.com/google/agi/releases/download/v#{version}/agi-#{version}-macos.dmg",
      verified: "github.com/google/agi/"
  name "agi"
  desc "Android GPU Inspector"
  homepage "https://gpuinspector.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "AGI.app"

  zap trash: "~/.agic"
end
