cask "font-gentium-plus" do
  version "6.200"
  sha256 "9b21103b79961149b6508791572acb3b2fe7eb621474c57d5e4ee37e76d7b073"

  url "https://github.com/silnrsi/font-gentium/releases/download/v#{version}/GentiumPlus-#{version}.zip",
      verified: "github.com/silnrsi/font-gentium/"
  name "Gentium"
  homepage "https://software.sil.org/gentium/"

  font "GentiumPlus-#{version}/GentiumBookPlus-Bold.ttf"
  font "GentiumPlus-#{version}/GentiumBookPlus-BoldItalic.ttf"
  font "GentiumPlus-#{version}/GentiumBookPlus-Italic.ttf"
  font "GentiumPlus-#{version}/GentiumBookPlus-Regular.ttf"
  font "GentiumPlus-#{version}/GentiumPlus-Bold.ttf"
  font "GentiumPlus-#{version}/GentiumPlus-BoldItalic.ttf"
  font "GentiumPlus-#{version}/GentiumPlus-Italic.ttf"
  font "GentiumPlus-#{version}/GentiumPlus-Regular.ttf"

  # No zap stanza required
end
