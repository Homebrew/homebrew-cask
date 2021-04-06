cask "refined-github-safari" do
  version "2.1.30"
  sha256 "a363562e367cd78c98dd2748230e085e06b4930e7baffa7342ae9e46dadf3b65"

  url "https://github.com/lautis/refined-github-safari/releases/download/v#{version}/Refined-GitHub-for-Safari.zip"
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
