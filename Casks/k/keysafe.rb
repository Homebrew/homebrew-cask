cask "keysafe" do
  version "1.3.1"
  sha256 "429eff0350d61f8502b95aea40c62b43fa31e40cc14d13960e0dc66f3858ce24"

  url "https://miln.eu/keysafe/miln-keysafe-v#{version}-darwin-universal.zip"
  name "Keysafe"
  desc "Read and decrypt Apple Keychain files"
  homepage "https://miln.eu/keysafe"

  livecheck do
    url "https://miln.eu/keysafe/miln-keysafe-darwin-universal.zip"
    regex(/miln-keysafe[._-]v?(\d+(?:\.\d+)+)-darwin-universal\.zip/i)
    strategy :header_match
  end

  binary "miln-keysafe-v#{version}-darwin-universal/keysafe"
end
