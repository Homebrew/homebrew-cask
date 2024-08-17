cask "font-iosevka-ss05" do
  version "31.3.0"
  sha256 "db2db7b03c7e5f6d429dee63312cc9b45837e891913e99a67db4539061c0bccb"

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
