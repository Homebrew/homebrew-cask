cask "font-brass-mono" do
  version "1.100"
  sha256 "8aa2761baf1003c293b5619cf15e0a23ff86cd3cd56b60df6819b70093cd4d18"

  url "https://github.com/fonsecapeter/brass_mono/releases/download/v#{version}/BrassMono.zip"
  name "Brass Mono"
  homepage "https://github.com/fonsecapeter/brass_mono"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "BrassMono-Bold.ttf"
  font "BrassMono-BoldItalic.ttf"
  font "BrassMono-Italic.ttf"
  font "BrassMono-Regular.ttf"
  font "BrassMonoCode-Bold.ttf"
  font "BrassMonoCode-BoldItalic.ttf"
  font "BrassMonoCode-Italic.ttf"
  font "BrassMonoCode-Regular.ttf"

  # No zap stanza required
end
