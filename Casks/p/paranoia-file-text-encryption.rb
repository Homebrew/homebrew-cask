cask "paranoia-file-text-encryption" do
  arch arm: "arm64", intel: "x86_64"

  version "17.2.43"
  sha256 "8d99a7b67cc915cc2db1ec3aed7382c4815e43f6c3e97eac8ed1208a30b5b692"

  url "https://paranoiaworks.com/download/ParanoiaFileTextEnc-#{version}.pkg"
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
