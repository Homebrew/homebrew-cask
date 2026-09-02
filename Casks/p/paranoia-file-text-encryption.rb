cask "paranoia-file-text-encryption" do
  arch arm: "arm64", intel: "x86_64"

  version "17.1.43"
  sha256 "6cddc01c894088bcb023dfe95cef8910d6ff13d8bca2f10006cf61b76261c18e"

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
