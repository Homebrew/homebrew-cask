cask "font-cozette" do
  version "1.24.1"
  sha256 "27176cc4f76259db3e65eecda8999b2167c305bca9e563c272216208d94044f7"

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
