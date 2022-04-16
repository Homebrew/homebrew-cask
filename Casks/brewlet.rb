cask "brewlet" do
  version "1.6"
  sha256 "5bde803b2247962b85e768cc64f1aac5ffa3e5641cfaf09e9cb277a557cd0941"

  url "https://github.com/zkokaja/Brewlet/releases/download/v#{version}/Brewlet.zip"
  name "Brewlet"
  desc "Missing menulet for Homebrew"
  homepage "https://github.com/zkokaja/Brewlet"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/v([^/]+)/Brewlet\.zip}i)
  end

  app "Brewlet.app"

  zap trash: "~/Library/Preferences/zzada.Brewlet.plist"
end
