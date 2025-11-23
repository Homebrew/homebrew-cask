cask "font-iosevka-ss09" do
  version "33.3.5"
  sha256 "01c26abb4df7f36bdb577455b78672e8bbae72ef6f35fac65abc52cf96c9905d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
