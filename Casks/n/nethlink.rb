cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.4.6"
  sha256 arm:   "d1b906d01eff36e54b55caa2129bd55cee4709e04947aa858f829d47aafa9686",
         intel: "034d2e6443b04e4c424b5fdbe24624951662df043b2c86cfcb55318d2498de81"

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
