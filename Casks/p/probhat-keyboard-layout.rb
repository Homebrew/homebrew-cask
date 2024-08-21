cask "probhat-keyboard-layout" do
  version "1.0.1"
  sha256 "c80d71e19447c36b543eda78eb05807945d7991339b3e392cbdd6ba0e9528caa"

  url "https://github.com/bdeshi/probhat-mac-osx/archive/refs/tags/v#{version}.tar.gz"
  name "probhat-keyboard-layout"
  desc "Bangla Probhat keyboard layout bundle"
  homepage "https://github.com/bdeshi/probhat-mac-osx/"

  livecheck do
    url :url
    strategy :github_latest
  end

  keyboard_layout "probhat-mac-osx-#{version}/ProbhatKeyboardLayout.bundle"
end
