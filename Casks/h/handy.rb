cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.10"
  sha256 arm:   "d253476609d62936d345e75414f3fc8d9e932b119d872ac853a6b27cc50223e4",
         intel: "357c67f467423b050f2385942280cf50dbf6953494a1e94f0a091b6229ae458c"

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}.dmg",
      verified: "github.com/cjpais/Handy/"
  name "Handy"
  desc "Speech to text application"
  homepage "https://handy.computer/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Handy.app"

  zap trash: [
    "~/Library/Application Support/com.pais.handy",
    "~/Library/Caches/com.pais.handy",
    "~/Library/LaunchAgents/Handy.plist",
    "~/Library/WebKit/com.pais.handy",
  ]
end
