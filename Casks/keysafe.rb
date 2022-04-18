cask "keysafe" do
  version "1.1.0"
  sha256 "6244512d7df893fae569fada5e007011f7ba649334caee3b883ea2460f266933"

  url "https://miln.eu/keysafe/miln-keysafe-v#{version}-darwin-universal.zip"
  name "Keysafe"
  desc "Read and decrypt Apple Keychain files"
  homepage "https://miln.eu/keysafe"

  livecheck do
    url "https://miln.eu/keysafe/miln-keysafe-darwin-universal.zip"
    strategy :header_match
    regex(/miln-keysafe[._-]v?(\d+(?:\.\d+)+)-darwin-universal\.zip/i)
  end

  binary "miln-keysafe-v#{version}-darwin-universal/keysafe"
end
