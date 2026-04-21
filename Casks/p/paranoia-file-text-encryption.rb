cask "paranoia-file-text-encryption" do
  version "16.1.43"
  sha256 "1c91a48925e364d3cf9dd88ceba4aebf11b915fb5984788cba3e28764b6a160b"

  url "https://paranoiaworks.com/download/ParanoiaFileTextEnc-#{version}.pkg"
  name "Paranoia File & Text Encryption"
  desc "Encrypt files, folders, and text with strong algorithms, steganography, and post-quantum key exchange"
  homepage "https://paranoiaworks.mobi/pfte/"

  pkg "ParanoiaFileTextEnc-#{version}.pkg"

  uninstall pkgutil: "com.paranoiaworks.macos.Paranoia-FileText-Encryption"
end