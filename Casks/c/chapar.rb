cask "chapar" do
  arch arm: "arm64", intel: "amd64"

  version "0.14.1"
  sha256 arm:   "4345fb04985656b5bca3da6ddc5b4e510120444f395e2b4be6e2eb1ff614e1ca",
         intel: "662da058c13e6ff288f55bad672dff28fe25bdd62309d714f2a4bd9c8a605a52"

  url "https://github.com/chapar-rest/chapar/releases/download/v#{version}/chapar-macos-v#{version}-#{arch}.dmg"
  name "Chapar"
  desc "Native API client"
  homepage "https://chapar.rest/"

  depends_on :macos

  app "Chapar.app"

  zap trash: "~/Library/Application Support/chapar"
end
