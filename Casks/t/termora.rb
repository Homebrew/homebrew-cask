cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.14"
  sha256 arm:   "97cb6ef5d8cf91d94dc6604c58e0d8a03b3886b1f1a5ff12cdd671360d8d883e",
         intel: "5050cc82926ae2f04372727f9db125a507e8d956d5b091ece0aa051ddfa40863"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
