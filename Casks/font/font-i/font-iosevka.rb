cask "font-iosevka" do
  version "33.2.8"
  sha256 "4bacf82337638fc12494bc8b24058e62988090e987d6b15c211cb7b1fd5fef6f"

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
