cask "font-gentium" do
  version "7.000"
  sha256 "313e64963ba27851356060a725d36ce01680e5c5c63f46e4b40f15741c043e21"

  url "https://github.com/silnrsi/font-gentium/releases/download/v#{version}/Gentium-#{version}.zip",
      verified: "github.com/silnrsi/font-gentium/"
  name "Gentium"
  homepage "https://software.sil.org/gentium/"

  font "Gentium-#{version}/Gentium-Bold.ttf"
  font "Gentium-#{version}/Gentium-BoldItalic.ttf"
  font "Gentium-#{version}/Gentium-ExtraBold.ttf"
  font "Gentium-#{version}/Gentium-ExtraBoldItalic.ttf"
  font "Gentium-#{version}/Gentium-Italic.ttf"
  font "Gentium-#{version}/Gentium-Medium.ttf"
  font "Gentium-#{version}/Gentium-MediumItalic.ttf"
  font "Gentium-#{version}/Gentium-Regular.ttf"
  font "Gentium-#{version}/Gentium-SemiBold.ttf"
  font "Gentium-#{version}/Gentium-SemiBoldItalic.ttf"

  # No zap stanza required
end
