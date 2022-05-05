cask "brewlet" do
  version "1.7"
  sha256 "dad90df09f58d4089e0b7591dc2b721ef6108540664dad016a5775f118a574f5"

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
