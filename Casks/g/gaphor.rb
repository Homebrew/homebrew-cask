cask "gaphor" do
  arch arm: "arm", intel: "intel"

  version "3.2.0"
  sha256 arm:   "ae59e7f232084e7091bbb31946900cd50d508faa12a27346c5bed96cab698c4e",
         intel: "4fb5d766211d9688f1d7eb331a71fbb673453db9195643a225bf80596892d155"

  url "https://github.com/gaphor/gaphor/releases/download/#{version}/Gaphor-#{version}-#{arch}.dmg",
      verified: "github.com/gaphor/gaphor/"
  name "Gaphor"
  desc "UML/SysML modelling tool"
  homepage "https://gaphor.org/"

  app "Gaphor.app"

  uninstall quit: "Gaphor-#{version}"

  zap trash: [
    "~/.cache/gaphor",
    "~/.local/share/gaphor",
  ]
end
