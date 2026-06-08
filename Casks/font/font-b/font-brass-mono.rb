cask "font-brass-mono" do
  version "1.101"
  sha256 "674285de45647fd35f9378f358cc85ca405026be67df991b26c35292ffd71459"

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
