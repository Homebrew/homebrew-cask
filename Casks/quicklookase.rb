cask "quicklookase" do
  version "1.0"
  sha256 "3dea77093d5bf4a5ee0292770db1c7103481aee6de456586427bfffefab30803"

  url "https://github.com/rsodre/QuickLookASE/releases/download/v#{version}/QuickLookASE.qlgenerator.zip"
  appcast "https://github.com/rsodre/QuickLookASE/releases.atom"
  name "QuickLookASE"
  homepage "https://github.com/rsodre/QuickLookASE"

  qlplugin "QuickLookASE.qlgenerator"
end
