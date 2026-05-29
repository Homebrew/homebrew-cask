cask "paranoia-file-text-encryption" do
  arch arm: "arm64", intel: "x86_64"

  version "16.1.431"
  sha256 "c9a73eedb968e021f588fde07571b3c1464de1f6a6d41f833f993be7b2f224c0"

  url "https://paranoiaworks.com/download/ParanoiaFileTextEnc-#{version}.pkg",
      verified: "paranoiaworks.com/download/"
  name "Paranoia File & Text Encryption"
  desc "File and text encryptor with steganography and post-quantum key exchange"
  homepage "https://paranoiaworks.mobi/pfte/"

  livecheck do
    url "https://paranoiaworks.com/download/"
    regex(/ParanoiaFileTextEnc[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on :macos

  pkg "ParanoiaFileTextEnc-#{version}.pkg"

  uninstall pkgutil: "com.paranoiaworks.macos.Paranoia-FileText-Encryption.#{arch}"

  zap trash: [
    "~/.ssefe.conf",
    "~/.ssepte.conf",
  ]
end
