cask "refined-github-safari" do
  version "2.1.5"
  sha256 "cc4bedd6d1d3e09bf7cdbe3d522701f900d20033d61164e6466cfdce56d23440"

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
