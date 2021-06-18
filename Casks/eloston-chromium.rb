cask "eloston-chromium" do
  if Hardware::CPU.intel?
    version "91.0.4472.106-1.1_x86-64"
    sha256 "cd77265b9dfef1139eca091181cb834778244d46871232e4dbb3a0588a6c657a"
  else
    version "91.0.4472.106-1.1_arm64"
    sha256 "d0e32f361bfa9661c3e80898388edd93fdba6fcf06bd53e8087022cb657963b1"
  end

  url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version}/ungoogled-chromium_#{version}-macos.dmg",
      verified: "github.com/kramred/ungoogled-chromium-macos/"
  name "Ungoogled Chromium"
  desc "Google Chromium, sans integration with Google"
  homepage "https://ungoogled-software.github.io/ungoogled-chromium-binaries/"

  conflicts_with cask: [
    "chromium",
    "freesmug-chromium",
  ]

  app "Chromium.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
