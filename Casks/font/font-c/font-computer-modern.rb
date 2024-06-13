cask "font-computer-modern" do
  version "0.7.0"
  sha256 "2609c14450f42d0bcd40203900afcb1d693521a9b24a18c65e14b6b0585ff150"

  url "https://downloads.sourceforge.net/cm-unicode/cm-unicode-#{version}-ttf.tar.xz",
      verified: "downloads.sourceforge.net/cm-unicode/"
  name "Computer Modern"
  homepage "https://cm-unicode.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/cm-unicode/rss?path=/cm-unicode"
    regex(%r{url=.*?/cm-unicode/v?(\d+(?:\.\d+)+[a-z]?)/})
  end

  font "cm-unicode-#{version}/cmunbbx.ttf"
  font "cm-unicode-#{version}/cmunbi.ttf"
  font "cm-unicode-#{version}/cmunbl.ttf"
  font "cm-unicode-#{version}/cmunbmo.ttf"
  font "cm-unicode-#{version}/cmunbmr.ttf"
  font "cm-unicode-#{version}/cmunbso.ttf"
  font "cm-unicode-#{version}/cmunbsr.ttf"
  font "cm-unicode-#{version}/cmunbtl.ttf"
  font "cm-unicode-#{version}/cmunbto.ttf"
  font "cm-unicode-#{version}/cmunbx.ttf"
  font "cm-unicode-#{version}/cmunbxo.ttf"
  font "cm-unicode-#{version}/cmunci.ttf"
  font "cm-unicode-#{version}/cmunit.ttf"
  font "cm-unicode-#{version}/cmunobi.ttf"
  font "cm-unicode-#{version}/cmunobx.ttf"
  font "cm-unicode-#{version}/cmunorm.ttf"
  font "cm-unicode-#{version}/cmunoti.ttf"
  font "cm-unicode-#{version}/cmunrb.ttf"
  font "cm-unicode-#{version}/cmunrm.ttf"
  font "cm-unicode-#{version}/cmunsi.ttf"
  font "cm-unicode-#{version}/cmunsl.ttf"
  font "cm-unicode-#{version}/cmunso.ttf"
  font "cm-unicode-#{version}/cmunss.ttf"
  font "cm-unicode-#{version}/cmunssdc.ttf"
  font "cm-unicode-#{version}/cmunst.ttf"
  font "cm-unicode-#{version}/cmunsx.ttf"
  font "cm-unicode-#{version}/cmuntb.ttf"
  font "cm-unicode-#{version}/cmunti.ttf"
  font "cm-unicode-#{version}/cmuntt.ttf"
  font "cm-unicode-#{version}/cmuntx.ttf"
  font "cm-unicode-#{version}/cmunui.ttf"
  font "cm-unicode-#{version}/cmunvi.ttf"
  font "cm-unicode-#{version}/cmunvt.ttf"

  # No zap stanza required
end
