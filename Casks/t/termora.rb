cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.13"
  sha256 arm:   "4954a9930692a6e873f62e673ebac4260bf2adc586defc5389bda7e79a877198",
         intel: "815026334f817e0f040c8dc423a4b337596b5fbcc58c6ef10b8f99c1db15f216"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
