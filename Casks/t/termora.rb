cask "termora" do
  arch arm: "aarch64", intel: "x86-64"

  version "1.0.17"
  sha256 arm:   "d17af308c269e49b353059ce879bf6a242df6e322241f819d3908363e77f1479",
         intel: "01b509e180d6677a96711170812b8d4d8701ff9f6a68382a2b7063392f2319de"

  url "https://github.com/TermoraDev/termora/releases/download/#{version}/termora-#{version}-osx-#{arch}.dmg"
  name "Termora"
  desc "Terminal emulator and SSH client"
  homepage "https://github.com/TermoraDev/termora"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Termora.app"

  zap trash: "~/.termora"
end
