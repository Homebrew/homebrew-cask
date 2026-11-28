cask "gaphor" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "3.4.0"
    sha256 "4495e1ee2961e38ae17e6fd0b466acf6be39a8fd4851d43b7ac2151a74d42ea5"
  end
  on_intel do
    version "3.3.2"
    sha256 "d835da72051beb0efce3dfacdb1221bfc61f4953a61dfe60bb590c17bda020fd"

    # https://github.com/gaphor/gaphor/pull/4440
    deprecate! date: "2026-11-28", because: :discontinued
  end

  url "https://github.com/gaphor/gaphor/releases/download/#{version}/Gaphor-#{version}-#{arch}.dmg"
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
