cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.14.0"
  sha256 arm:   "f84267051487c8d242d3cdfe8f2d87fd2db894a52507ca5dc72c8d67bcfd06e1",
         intel: "73a4c5de3f3ea9ed5f05431e75fbb41a59ef5edb7f43ceba80c85a7017e3bed2"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "FOSSA"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "fossa"

  # No zap stanza required
end
