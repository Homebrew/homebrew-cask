cask "paranoia-file-text-encryption" do
  arch arm: "arm64", intel: "x86_64"

  version "16.2.43"
  sha256 "11d3bc471a4768e4bf173842582aae6d01965b6abed7d1df7a7cac2a919439e8"

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
