cask "topaz-denoise-ai" do
  version "3.7.2"
  sha256 "1ea955c36d8918b41c5be2d2684ccdc27ec3ae0f46834b788ccbfa7a33b30a76"

  url "https://downloads.topazlabs.com/deploy/TopazDeNoiseAI/#{version}/TopazDeNoiseAI-#{version}-osx-Full-Installer.dmg"
  name "Topaz DeNoise AI"
  desc "Eliminate noise in your images"
  homepage "https://www.topazlabs.com/denoise-ai"

  deprecate! date: "2024-05-07", because: :discontinued

  app "Topaz DeNoise AI.app"

  # No zap stanza required
end
