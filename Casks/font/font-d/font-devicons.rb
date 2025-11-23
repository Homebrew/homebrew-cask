cask "font-devicons" do
  version "1.8.0"
  sha256 "d8d2dc243ca42897a082ffe32a22cab53cdd148cf87b24162cf450ccfc12fece"

  url "https://github.com/vorillaz/devicons/archive/refs/tags/#{version}.tar.gz",
      verified: "github.com/vorillaz/devicons/"
  name "Devicons"
  homepage "https://vorillaz.github.io/devicons/"

  font "devicons-#{version}/fonts/devicons.ttf"

  # No zap stanza required
end
