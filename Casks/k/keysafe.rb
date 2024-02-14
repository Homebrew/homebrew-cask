cask "keysafe" do
  version "1.4.0"
  sha256 "b1a83bba3031745228ed4e20e795340eac738b440cfe0792c5d7b1f5889d525e"

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
