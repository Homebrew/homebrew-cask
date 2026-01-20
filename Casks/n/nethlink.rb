cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.4.1"
  sha256 arm:   "693502b2479c1c5c8b81327aa8e0f8735f24dd316b5dee939c8fe3d31b4cbd81",
         intel: "6d53c48efaca22bfc5d8a4216170bdd55ff0dc98b729bdb49166b785a5298ea7"

  url "https://github.com/NethServer/nethlink/releases/download/v#{version}/nethlink-#{version}-#{arch}.dmg"
  name "NethLink"
  desc "Link NethServer systems and provide remote access tools"
  homepage "https://github.com/NethServer/nethlink"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "NethLink.app"

  zap trash: "~/Library/Application Support/nethlink"
end
