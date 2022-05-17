cask "keysafe" do
  version "1.2.0"
  sha256 "b6317685fde1c912c8436a664f77359cbc7ecad75b7f57af05af6431733d1997"

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
