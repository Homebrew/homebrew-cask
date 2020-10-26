cask "refined-github-safari" do
  version "2.1.20"
  sha256 "a8621ada8a048782d5bf585a195d5e432b0fc57c280ed62d65ed9b64ab76eebc"

  url "https://github.com/lautis/refined-github-safari/releases/download/v#{version}/Refined-GitHub-for-Safari.zip"
  appcast "https://github.com/lautis/refined-github-safari/releases.atom"
  name "Refined GitHub for Safari"
  desc "Safari version of the Refined Github extension"
  homepage "https://github.com/lautis/refined-github-safari"

  depends_on macos: ">= :mojave"

  app "Refined GitHub for Safari.app"

  zap delete: [
    "~/Library/Application Scripts/fi.lautanala.refined-github",
    "~/Library/Application Scripts/fi.lautanala.refined-github-extension",
    "~/Library/Containers/fi.lautanala.refined-github",
    "~/Library/Containers/fi.lautanala.refined-github-extenstion",
  ]
end
