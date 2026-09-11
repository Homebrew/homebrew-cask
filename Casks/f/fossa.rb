cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.18.4"
  sha256 arm:   "6b334b15f815f96dcf31bda32b039164163570686ffdef46a0a8087fd9d45dda",
         intel: "bf5419caa3714bd99adc4fd1adddb525f128a5f0e3778ad4f59076a83b7b7fea"

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
