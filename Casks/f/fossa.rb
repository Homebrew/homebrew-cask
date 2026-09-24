cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.19.3"
  sha256 arm:   "92b629c3db635d1ed37bbb30418e20d12e404eb91282a9e8e76273d54a3a6246",
         intel: "a9854f8235062a231b46e1f11d69c99f58da67f79bc438db2aeda2b7eabb9d92"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip"
  name "FOSSA"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "fossa"

  # No zap stanza required
end
