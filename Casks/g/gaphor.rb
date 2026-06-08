cask "gaphor" do
  arch arm: "arm", intel: "intel"

  version "3.3.2"
  sha256 arm:   "f1b5ee8d31039af579445dc08ac8402f8da66c2e673099f4685fc90c71c3ab3d",
         intel: "d835da72051beb0efce3dfacdb1221bfc61f4953a61dfe60bb590c17bda020fd"

  url "https://github.com/gaphor/gaphor/releases/download/#{version}/Gaphor-#{version}-#{arch}.dmg",
      verified: "github.com/gaphor/gaphor/"
  name "Gaphor"
  desc "UML/SysML modelling tool"
  homepage "https://gaphor.org/"

  depends_on :macos

  app "Gaphor.app"

  uninstall quit: "Gaphor-#{version}"

  zap trash: [
    "~/.cache/gaphor",
    "~/.local/share/gaphor",
  ]
end
