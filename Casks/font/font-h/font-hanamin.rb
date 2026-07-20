cask "font-hanamin" do
  version "20170904"
  sha256 "571cd4a09ae7da0c642d640fc2442c050aa450ebb0587a95cdd097d41a9c9572"

  url "https://glyphwiki.org/hanazono/hanazono-#{version}.zip"
  name "HanaMin"
  homepage "https://glyphwiki.org/hanazono/"

  livecheck do
    url :homepage
    regex(/href=.*hanazono[._-]v?(\d+(?:\.\d+)*)\.zip"/i)
  end

  font "HanaMinA.ttf"
  font "HanaMinB.ttf"

  # No zap stanza required
end
