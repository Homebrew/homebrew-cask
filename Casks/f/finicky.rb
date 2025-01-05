cask "finicky" do
  version "3.4.0"
  sha256 "da572a168b670d3271e449ac83d55f1d642aa73695ef50da0c022c0f19da925c"

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  name "Finicky"
  desc "Utility for customizing which browser to start"
  homepage "https://github.com/johnste/finicky"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Finicky.app"

  zap trash: "~/Library/Preferences/net.kassett.finicky.plist"
end
