cask "clarinet" do
  version "0.12.0"
  sha256 "ba280091e2db92de3a07ecdb4abd75e7abcd746e739684f8f9f2cac685210b28"

  url "https://github.com/hirosystems/clarinet/releases/download/v#{version}/macos-x64.zip"
  name "clarinet"
  desc "Clarity CLI for smart contract development, testing and deployment"
  homepage "https://github.com/hirosystems/clarinet/blob/master/README.md"

  binary "clarinet"

  caveats <<~EOS
    Clarinet is not yet signed or notarized by Apple, and thus an Apple warning may block it from being used unless it's installed without the 'quaratine' system attribute like so:

      brew install --no-quarantine #{token}

    If reading this message post-installation, you can copy/paste and execute this command to reinstall without the 'quarantine' attribute:

      brew reinstall --no-quarantine #{token}

    WARNING: quarantining is a macOS security feature and you disable it at your own risk!
  EOS
end
