cask "font-open-iconic" do
  version "1.1.1"
  sha256 "846dafa3d3aebef38bcc9b5d7b7613846dbc07f5f06536b42ac682976524b6c4"

  url "https://github.com/iconic/open-iconic/archive/refs/tags/#{version}.tar.gz"
  name "Open Iconic"
  homepage "https://github.com/iconic/open-iconic/"

  font "open-iconic-#{version}/font/fonts/open-iconic.ttf"

  # No zap stanza required
end
