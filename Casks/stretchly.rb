cask "stretchly" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.10.0"

  if Hardware::CPU.intel?
    sha256 "d5bff265d0d3142af98629b648ec4d39d4058aaad4d55a8f4780f1682ce1a471"
  else
    sha256 "b27a6a4d20c3da67c7868088d7e464414eca5f7a010806c708716ec2f0e6deba"
  end

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}#{arch}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"

  caveats <<~EOS
    This application is not signed. See https://github.com/hovancik/stretchly#application-signing for details.
  EOS
end
