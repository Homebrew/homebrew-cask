cask "font-iosevka-ss05" do
  version "32.4.0"
  sha256 "eecbc65b1d2ac64a6a1c74d0f687453e933321125f93099ae9d66986ebe36e53"

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
