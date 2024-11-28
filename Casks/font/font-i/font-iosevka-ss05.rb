cask "font-iosevka-ss05" do
  version "32.2.0"
  sha256 "c92c940824a8651b4803ae88470d174f8e2044c0c79e7d4aa70477e99632601f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
