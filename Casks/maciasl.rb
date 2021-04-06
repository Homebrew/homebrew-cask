cask "maciasl" do
  version "1.6.0"
  sha256 "afaf1ecfb8aab59172829e34a0f82cd5f32eb92203043b65e540412ca2368cec"

  url "https://github.com/acidanthera/MaciASL/releases/download/#{version}/MaciASL-#{version}-RELEASE.zip"
  name "MaciASL"
  homepage "https://github.com/acidanthera/MaciASL"

  app "MaciASL.app"
  binary "#{appdir}/MaciASL.app/Contents/MacOS/iasl-stable", target: "iasl"
end
