cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.16.0"
  sha256 arm:   "158074e178dadb92821d49d2143e5d8783334d420144ca685968200cecdf0056",
         intel: "d7475c20b9a75005e6e195d7b1b23851c65fcbe88d7ff2298b9675799851f1d1"

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
