cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.4.5"
  sha256 arm:   "79a431e62fe2c0da7886a37e0e166fa352df640993d3b9054977ad8ba68ef833",
         intel: "2e9f7dbcfaab60a4cf8cad174b0e54c9c98c398901da26eb3d0e83b5e4882fda"

  url "https://github.com/NethServer/nethlink/releases/download/v#{version}/nethlink-#{version}-#{arch}.dmg"
  name "NethLink"
  desc "Link NethServer systems and provide remote access tools"
  homepage "https://github.com/NethServer/nethlink"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "NethLink.app"

  zap trash: "~/Library/Application Support/nethlink"
end
