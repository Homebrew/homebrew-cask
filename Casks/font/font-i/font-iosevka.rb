cask "font-iosevka" do
  version "34.9.0"
  sha256 "e29ad0728e56adb3e02dd27e37dff6eb1a40026f562f1808a8cf7ccc56545414"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  # No zap stanza required
end
