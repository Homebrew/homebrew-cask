cask "maciasl" do
  version "1.5.9"
  sha256 "706bdb1ca7dde9a17c4d0b695a36bbc6191f9fd7b58b2772b82cf16147407f94"

  url "https://github.com/acidanthera/MaciASL/releases/download/#{version}/MaciASL-#{version}-RELEASE.zip"
  appcast "https://github.com/acidanthera/MaciASL/releases.atom"
  name "MaciASL"
  homepage "https://github.com/acidanthera/MaciASL"

  app "MaciASL.app"
  binary "#{appdir}/MaciASL.app/Contents/MacOS/iasl-stable", target: "iasl"
end
