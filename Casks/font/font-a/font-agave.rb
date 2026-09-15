cask "font-agave" do
  version "39"
  sha256 "248790fd32bf644e34fa0b7ac3c4273fa296eaaf7df90bb468f893877d4c89cd"

  url "https://github.com/blobject/agave/archive/refs/tags/#{version}.tar.gz"
  name "Agave"
  homepage "https://b.agaric.net/page/agave"

  font "agave-#{version}/dist/Agave-Bold.ttf"
  font "agave-#{version}/dist/Agave-Regular.ttf"

  # No zap stanza required
end
