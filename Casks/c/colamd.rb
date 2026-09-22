cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "90acdf2f38ea4d9e5308b662a3a39f9cd004bba920422ad1673027f730778f16",
         intel: "fd0981441cb2cb1242a566c0668054b73864ecf09c6e635a6351905c2ae5d902"

  url "https://github.com/marswaveai/ColaMD/releases/download/v#{version}/ColaMD-#{version}-#{arch}.dmg"
  name "ColaMD"
  desc "Markdown editor"
  homepage "https://colamd.com/"

  auto_updates true
  depends_on macos: :ventura

  app "ColaMD.app"

  zap trash: [
    "~/.colamd",
    "~/Library/Application Support/colamd",
    "~/Library/Preferences/ai.marswave.colamd.plist",
  ]
end
