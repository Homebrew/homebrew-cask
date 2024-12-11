cask "keysafe" do
  version "1.6.0"
  sha256 "2c4dc58df1d0678df6c8577e7202874afe1b9c4e17c030888ec0aabeba004b8e"

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
