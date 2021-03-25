cask "multimc" do
  version "0.6.12"
  sha256 "d491b6a2a2ec3420dd66a11815a3f7c64b46bb6044fa5402b026b53aeb964934"

  url "https://github.com/MultiMC/MultiMC5/releases/download/#{version}/mmc-stable-osx64.tar.gz",
      verified: "github.com/MultiMC/MultiMC5/"
  name "Multi MC"
  homepage "https://multimc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "MultiMC.app"
end
