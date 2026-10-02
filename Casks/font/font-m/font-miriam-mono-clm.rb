cask "font-miriam-mono-clm" do
  version "0.140"
  sha256 "6daed104481007752a76905000e71c0093c591c8ef3017d1b18222c277fc52e3"

  url "https://downloads.sourceforge.net/culmus/culmus/#{version}/culmus-#{version}.tar.gz"
  name "Miriam Mono CLM"
  homepage "https://culmus.sourceforge.io/"

  livecheck do
    url :url
    regex(%r{url=.*?/culmus[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end

  font "culmus-#{version}/MiriamMonoCLM-Bold.ttf"
  font "culmus-#{version}/MiriamMonoCLM-BoldOblique.ttf"
  font "culmus-#{version}/MiriamMonoCLM-Book.ttf"
  font "culmus-#{version}/MiriamMonoCLM-BookOblique.ttf"

  # No zap stanza required
end
