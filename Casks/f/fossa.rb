cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.11.5"
  sha256 arm:   "ca96758673d74a7c7f824dfe642d5ac46e6d7faa3b95eaf35304cc3741c7376c",
         intel: "367286e5e874ed1fc81ef35893cc73d59393e94a0c06e2cb42116cc2e6ac0555"

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
