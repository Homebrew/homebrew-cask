cask "font-eb-garamond" do
  version "0.016"
  sha256 "a0b77b405f55c10cff078787ef9d2389a9638e7604d53aa80207fe62e104c378"

  url "https://bitbucket.org/georgd/eb-garamond/downloads/EBGaramond-#{version}.zip",
      verified: "bitbucket.org/georgd/eb-garamond/"
  name "EB Garamond"
  homepage "https://github.com/georgd/EB-Garamond"

  font "EBGaramond-#{version}/otf/EBGaramond-Initials.otf"
  font "EBGaramond-#{version}/otf/EBGaramond-InitialsF1.otf"
  font "EBGaramond-#{version}/otf/EBGaramond-InitialsF2.otf"
  font "EBGaramond-#{version}/otf/EBGaramond08-Italic.otf"
  font "EBGaramond-#{version}/otf/EBGaramond08-Regular.otf"
  font "EBGaramond-#{version}/otf/EBGaramond12-AllSC.otf"
  font "EBGaramond-#{version}/otf/EBGaramond12-Italic.otf"
  font "EBGaramond-#{version}/otf/EBGaramond12-Regular.otf"
  font "EBGaramond-#{version}/otf/EBGaramondSC08-Regular.otf"
  font "EBGaramond-#{version}/otf/EBGaramondSC12-Regular.otf"

  # No zap stanza required
end
