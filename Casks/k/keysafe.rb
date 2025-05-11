cask "keysafe" do
  version "1.7.1"
  sha256 "f2b39ad303c160801665c204a99396120a7c4e4626dd3e5084f4689d1d4168e5"

  url "https://miln.eu/keysafe/miln-keysafe-v#{version}-darwin-universal.zip"
  name "Keysafe"
  desc "Read and decrypt Apple Keychain files"
  homepage "https://miln.eu/keysafe"

  livecheck do
    url "https://miln.eu/keysafe/miln-keysafe-darwin-universal.zip"
    strategy :header_match
  end

  binary "miln-keysafe-v#{version}-darwin-universal/keysafe"

  # No zap stanza required
end
