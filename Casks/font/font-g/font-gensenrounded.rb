cask "font-gensenrounded" do
  version "2.000"
  sha256 "82c439a688a7083c641164e09515c11dbe3ca23f8d9d4a8874f6bb06a8d028c0"

  url "https://github.com/ButTaiwan/gensen-font/releases/download/v#{version}/GenSenRounded#{version.major}-ttc.zip"
  name "GenSenRounded"
  name "GenSenRounded"
  homepage "https://github.com/ButTaiwan/gensen-font"

  font "GenSenRounded#{version.major}-B.ttc"
  font "GenSenRounded#{version.major}-EL.ttc"
  font "GenSenRounded#{version.major}-H.ttc"
  font "GenSenRounded#{version.major}-L.ttc"
  font "GenSenRounded#{version.major}-M.ttc"
  font "GenSenRounded#{version.major}-R.ttc"

  # No zap stanza required
end
