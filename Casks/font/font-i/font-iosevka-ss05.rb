cask "font-iosevka-ss05" do
  version "34.8.1"
  sha256 "ccb5f03be69b4f3679770bc060fb971bc66109a35c0022a468f648bab7ab32cd"

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
