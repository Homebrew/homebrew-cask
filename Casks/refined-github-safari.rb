cask "refined-github-safari" do
  version "2.1.28"
  sha256 "57e86c12639031342294cdcdcce7498696a860295d5e811e229bfb0d306208b5"

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
