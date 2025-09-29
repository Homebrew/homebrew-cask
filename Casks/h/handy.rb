cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "32834bba4a9325e25490c7ada2a7000284ab7da38f790dd3958605352d24a78e",
         intel: "952ed2ae97c27fb50544a17364fc178b851b28120a93354db7203821723de152"

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}.dmg",
      verified: "github.com/cjpais/Handy/"
  name "Handy"
  desc "Speech to text application"
  homepage "https://handy.computer/"

  depends_on macos: ">= :ventura"

  app "Handy.app"

  zap trash: [
    "~/Library/Application Support/com.pais.handy",
    "~/Library/Caches/com.pais.handy",
    "~/Library/LaunchAgents/Handy.plist",
    "~/Library/WebKit/com.pais.handy",
  ]
end
