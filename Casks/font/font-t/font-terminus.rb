cask "font-terminus" do
  version "4.49.3"
  sha256 "0ead921d98d99a4590ffe6cd66dc037fc0a2ceea1c735d866ba73fe058257577"

  url "https://files.ax86.net/terminus-ttf/files/#{version}/terminus-ttf-#{version}.zip"
  name "Terminus TTF"
  homepage "https://files.ax86.net/terminus-ttf/"

  livecheck do
    url "https://files.ax86.net/terminus-ttf/files/latest/"
    regex(/href=.*?terminus[._-]ttf[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  font "terminus-ttf-#{version}/TerminusTTF-#{version}.ttf"
  font "terminus-ttf-#{version}/TerminusTTF-Bold-#{version}.ttf"
  font "terminus-ttf-#{version}/TerminusTTF-Bold-Italic-#{version}.ttf"
  font "terminus-ttf-#{version}/TerminusTTF-Italic-#{version}.ttf"

  # No zap stanza required
end
