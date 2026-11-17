cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.20.11"
  sha256 arm:   "b4cc53d4d91a0b0965dcde95d224cff51fe3be5d39766545429378acfe2dd675",
         intel: "6f51fb8b41776822ae989d4d72c2572705c29a5128e81b5eecdd4d484d11429f"

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
