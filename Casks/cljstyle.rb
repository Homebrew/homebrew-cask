cask "cljstyle" do
  version "0.13.0"
  sha256 "f2c29e27f15a1bf30d86ee8850be778466fc201cffc2c29745c149ef4beafedd"

  url "https://github.com/greglook/cljstyle/releases/download/#{version}/cljstyle_#{version}_macos.tar.gz"
  appcast "https://github.com/greglook/cljstyle/releases.atom"
  name "cljstyle"
  homepage "https://github.com/greglook/cljstyle"

  binary "cljstyle"
end
