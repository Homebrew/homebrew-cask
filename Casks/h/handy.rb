cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "50c3d8d208912bd425871104e00afc2f53ff0c1eb34df6345ca5a11e6a3a7783",
         intel: "d26b8f155fa3aaad381f8fc748fdf8a4e5751f6a49a541e5b2d153d1095ce7c7"

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
