cask "refined-github-safari" do
  version "2.1.3"
  sha256 "0c4f9d97bf754bb22f005f92a480e1603d1d698a36be9d237c13d35f81ea03ab"

  url "https://github.com/lautis/refined-github-safari/releases/download/v#{version}/Refined-GitHub-for-Safari.zip"
  appcast "https://github.com/lautis/refined-github-safari/releases.atom"
  name "Refined GitHub for Safari"
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
