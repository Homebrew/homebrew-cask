cask "font-genyomin" do
  version "1.501"
  sha256 "6feafd61b261bdeccc4e69eba8661f5f1dd7ec79d8ef3a78b19fb20759cf366f"

  url "https://github.com/ButTaiwan/genyo-font/releases/download/v#{version}/GenYoMin.zip"
  name "GenYoMin"
  homepage "https://github.com/ButTaiwan/genyo-font"

  font "GenYoMin-B.ttc"
  font "GenYoMin-EL.ttc"
  font "GenYoMin-H.ttc"
  font "GenYoMin-L.ttc"
  font "GenYoMin-M.ttc"
  font "GenYoMin-R.ttc"
  font "GenYoMin-SB.ttc"

  # No zap stanza required
end
