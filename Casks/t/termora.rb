cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.15"
  sha256 arm:   "192c6128a47fbc5bd5031d99b4277abf52121b7148c3dd312571414bd3a95d91",
         intel: "f9ba787d2c49d29f46baf6bb1795aa1ad64214e458d22471a6ec1c2335ccb187"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
