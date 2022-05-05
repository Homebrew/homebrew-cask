cask "onlyoffice" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm"

  version "7.0.1"

  if Hardware::CPU.intel?
    sha256 "84dd81ba9ee6ee54409133f7014240c0c23f7c2dfe5f1f8b334e5e52cf93e161"
  else
    sha256 "e33c84ec414ec918208d1168d7dc25190faf7ab2d7d114e535b7f9a111d00360"
  end

  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/ONLYOFFICE-#{arch}.dmg",
      verified: "github.com/ONLYOFFICE/DesktopEditors/"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  auto_updates true

  app "ONLYOFFICE.app"
end
