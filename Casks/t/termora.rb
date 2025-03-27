cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.11"
  sha256 arm:   "a37fc0c0331801c3a30f900f3add11da69f48ca805ff6a557d30609879b03b8a",
         intel: "77c8089afd4818bcecff798158b1fc99dfd0effefa9abdff929b017467618f71"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
