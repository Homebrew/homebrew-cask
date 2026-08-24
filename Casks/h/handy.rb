cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.6"
  sha256 arm:   "a961b35724f6c860bcdcece1f1d77c21343ad2156525f8800ca968a1aad4d854",
         intel: "f47b184b3052fa6a994e6cae1619b6340cea0e8742e616042444908649659d08"

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}.dmg",
      verified: "github.com/cjpais/Handy/"
  name "Handy"
  desc "Speech to text application"
  homepage "https://handy.computer/"

  auto_updates true
  depends_on macos: :ventura

  app "Handy.app"

  zap trash: [
    "~/Library/Application Support/com.pais.handy",
    "~/Library/Caches/com.pais.handy",
    "~/Library/LaunchAgents/Handy.plist",
    "~/Library/WebKit/com.pais.handy",
  ]
end
