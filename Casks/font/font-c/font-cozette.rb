cask "font-cozette" do
  version "1.25.0"
  sha256 "bd9e08d76b66968a3a2236503165f7ed16f9e65bcf77f24787c6f18a751c2d24"

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
