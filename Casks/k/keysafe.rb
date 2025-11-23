cask "keysafe" do
  version "1.9.2"
  sha256 "4679f62b10fd67aade65c54e8c4091a1f037491b21eee2f0e868be2ebef9bb3e"

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
