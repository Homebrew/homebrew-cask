cask "qlplayground" do
  version "0.2"
  sha256 "40487c1351b27a939d6383e359eea73c1a0a6b7fee00247f6954dae32540d1db"

  url "https://github.com/norio-nomura/qlplayground/releases/download/#{version}/qlplayground.qlgenerator-#{version}.zip"
  name "qlplayground"
  desc "Quick Look plugin for Swift files"
  homepage "https://github.com/norio-nomura/qlplayground"

  qlplugin "qlplayground.qlgenerator"

  # No zap stanza required
end
