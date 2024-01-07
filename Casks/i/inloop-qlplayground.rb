cask "inloop-qlplayground" do
  version "1.0"
  sha256 "44c25a7da0dc3748b01deb0c01634044ccbc625b4266b4fea0630cbedb773929"

  url "https://github.com/inloop/qlplayground/releases/download/v#{version}/inloop-qlplayground.v#{version}.zip"
  name "INLOOPX QLPlayground"
  desc "QuickLook generator for Xcode Playgrounds"
  homepage "https://github.com/inloop/qlplayground"

  qlplugin "inloop-qlplayground.qlgenerator"

  # No zap stanza required
end
