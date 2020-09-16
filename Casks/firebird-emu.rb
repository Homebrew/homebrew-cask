cask "firebird-emu" do
  version "1.5"
  sha256 "966e80c73e8be46bb3c370c781d0480abd50dbefea864a4c0acf4b6a83b62d0f"

  url "https://github.com/nspire-emus/firebird/releases/download/v#{version}/firebird-macOS.dmg"
  appcast "https://github.com/nspire-emus/firebird/releases.atom"
  name "firebird"
  homepage "https://github.com/nspire-emus/firebird"

  app "firebird-emu.app"
end
