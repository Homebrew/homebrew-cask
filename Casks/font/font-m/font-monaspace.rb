cask "font-monaspace" do
  version "1.101"
  sha256 "7ff2317c7bdaed8e81dcbe1314e6ab12ad9641b7ddf921e996a227ff4ec7752f"

  url "https://github.com/githubnext/monaspace/releases/download/v#{version}/monaspace-v#{version}.zip",
      verified: "github.com/githubnext/monaspace/"
  name "Monaspace"
  homepage "https://monaspace.githubnext.com/"

  font "monaspace-v#{version}/fonts/variable/MonaspaceArgonVarVF[wght,wdth,slnt].ttf"
  font "monaspace-v#{version}/fonts/variable/MonaspaceKryptonVarVF[wght,wdth,slnt].ttf"
  font "monaspace-v#{version}/fonts/variable/MonaspaceNeonVarVF[wght,wdth,slnt].ttf"
  font "monaspace-v#{version}/fonts/variable/MonaspaceRadonVarVF[wght,wdth,slnt].ttf"
  font "monaspace-v#{version}/fonts/variable/MonaspaceXenonVarVF[wght,wdth,slnt].ttf"

  # No zap stanza required
end
