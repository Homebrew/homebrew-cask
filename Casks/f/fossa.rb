cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.15.5"
  sha256 arm:   "7906adabe7977ffdf2f20e64f4a622ee174260ecd872430c2ccb21c30539a944",
         intel: "b0f59ca1fd1a461a30170e559b313c6db488a40f3718cedb123674e7c5ffd881"

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
