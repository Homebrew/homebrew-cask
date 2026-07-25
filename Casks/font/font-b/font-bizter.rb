cask "font-bizter" do
  version "0.0.2"
  sha256 "288b32b8a8d01892f358e468cd95991a6a203d57c2fdbe1ba4bb0a58f740b455"

  url "https://github.com/yuru7/BIZTER/releases/download/v#{version}/BIZTER_v#{version}.zip"
  name "BIZTER"
  homepage "https://github.com/yuru7/BIZTER"

  font "BIZTER_v#{version}/BIZTER-Bold.ttf"
  font "BIZTER_v#{version}/BIZTER-Regular.ttf"

  # No zap stanza required
end
