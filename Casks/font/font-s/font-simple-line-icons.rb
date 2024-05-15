cask "font-simple-line-icons" do
  version "2.5.4"
  sha256 "4e21668ca8c22b082e63e016a4565af1a3875322a08cfcceaa2d9baf8fc21b3b"

  url "https://github.com/thesabbir/simple-line-icons/archive/#{version}.zip",
      verified: "github.com/thesabbir/simple-line-icons/"
  name "Simple Line Icons"
  homepage "https://simplelineicons.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "simple-line-icons-#{version}/fonts/Simple-Line-Icons.ttf"

  # No zap stanza required
end
