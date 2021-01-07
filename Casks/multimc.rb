cask "multimc" do
  version "0.6.11"
  sha256 "8b068b7a881a06e2f2c48a1ba696ed208780014dab03b3c2b633f72c15cd7d44"

  url "https://github.com/MultiMC/MultiMC5/releases/download/#{version}/mmc-stable-osx64.tar.gz",
      verified: "github.com/MultiMC/MultiMC5/"
  name "Multi MC"
  homepage "https://multimc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MultiMC.app"
end
