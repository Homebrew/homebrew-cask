cask "font-cozette" do
  version "1.25.1"
  sha256 "e0265bf6a5d575325cb197dbfb899fca6093e0ce896e8b49ae9ea034d7fd3568"

  url "https://github.com/slavfox/Cozette/releases/download/v.#{version}/CozetteFonts-v-#{version.dots_to_hyphens}.zip"
  name "Cozette"
  homepage "https://github.com/slavfox/Cozette"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "CozetteFonts/CozetteVector.otf"
  font "CozetteFonts/CozetteVectorBold.otf"

  # No zap stanza required
end
