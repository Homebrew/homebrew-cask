cask "paranoia-file-text-encryption" do
  arch arm: "arm64", intel: "x86_64"

  version "17.0.43"
  sha256 "5b94503f957a79854fa6a1aa6adb04e0173b526004c97c436d64c851d594e0ac"

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
