cask "keysafe" do
  version "1.9.0"
  sha256 "2e56b0ad8b1661e0ed851d7a01fddcd5f4a608f79d75c4f4d6964983fd8de9da"

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
