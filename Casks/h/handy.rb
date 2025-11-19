cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "00e23cb7404ccc9f29e0c54da27e70c320938a06c312acf1d49083f9f89c20f2",
         intel: "7467bf6b9523279ca04b1d1fe37276c4ee7cef4cc2e5bec142c8906d5b8f3c25"

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
