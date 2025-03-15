cask "font-iosevka-ss11" do
  version "33.1.0"
  sha256 "1a78f4d9133e9e1bba7add5231af41283d18394e96149594c6a3b3fcab6cc3af"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
