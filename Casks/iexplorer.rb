cask "iexplorer" do
  version "4.4.0,174"
  sha256 "dc0abeed74ebc5cd22f6c794310ab3a024c59cea628a0c83be3ba3ef6cca4f9b"

  url "https://assets.macroplant.com/download/#{version.after_comma}/iExplorer-#{version.before_comma}.dmg"
  appcast "https://macroplant.com/iexplorer/mac/v#{version.major}/appcast"
  name "iExplorer"
  desc "iOS device backup software and file manager"
  homepage "https://macroplant.com/iexplorer"

  app "iExplorer.app"
end
