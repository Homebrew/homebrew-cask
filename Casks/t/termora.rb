cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.16"
  sha256 arm:   "97f9a7444ec3617418713b2aa770db48f97ecfd55b4eb07af2b1a31ebc68f023",
         intel: "88787459c6904da34ce96a9991b9ababf4239d6ffd0d2afe14b06ffc67903910"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
