cask "font-iosevka-ss05" do
  version "31.4.0"
  sha256 "54f5040b4f9511991878114b81c391a1dd5b8af1ab0fd1b1ff47130bbed66ba4"

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
