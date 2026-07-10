cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "800ad3eafc75bff3634a680baddf84c9e185cd91baaba5bab0a1bfd642616d0f",
         intel: "27efef9901a272d0d91d7ba9c39bd40f8bc8d705484741b34396246d669646b7"

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
