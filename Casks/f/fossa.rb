cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.9.44"
  sha256 arm:   "88427a4755b1c1cfcecf008ca312cfea2b428c6840d58dfa49319abe47abf520",
         intel: "6c802b6086743b009c3c4689bd10ca2d33b0cef45c133deda8c4dd42714eea65"

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
