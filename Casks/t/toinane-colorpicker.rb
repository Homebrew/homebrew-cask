cask "toinane-colorpicker" do
  arch arm: "arm64", intel: "x64"

  version "2.2.1"
  sha256 arm:   "7f3f0e2ac92da11b2b49cfe45c14bf621c991e043e890bb773334496b8e9d1bc",
         intel: "dbeb808d43f1882487a2e792cddc072e472567355a51d7379a37902eb33a5e4b"

  url "https://github.com/toinane/colorpicker/releases/download/#{version}/Colorpicker-#{version}-#{arch}.dmg",
      verified: "github.com/toinane/colorpicker/"
  name "Colorpicker"
  desc "Get and save colour codes"
  homepage "https://colorpicker.fr/"

  app "Colorpicker.app"

  zap trash: "~/Library/Application Support/Colorpicker"
end
