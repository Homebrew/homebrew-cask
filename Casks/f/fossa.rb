cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.20.13"
  sha256 arm:   "398da0d428126a9d3677ccd40bb39b3b17eb4732ed53fd05ae4a5af8756032a4",
         intel: "a29e6d3ff4218d282050d28c9442b688927082a4c22798f900bb354122de0541"

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

  zap :not_required
end
