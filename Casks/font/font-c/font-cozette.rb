cask "font-cozette" do
  version "1.25.1"
  sha256 "bb7c7b3d28ebfd5b87fdb09e929be72f2e905342cc2bc1aecd84b2c4b36d9e12"

  url "https://github.com/slavfox/Cozette/releases/download/v.#{version}/CozetteVector.dfont"
  name "Cozette"
  homepage "https://github.com/slavfox/Cozette"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "CozetteVector.dfont"

  # No zap stanza required
end
