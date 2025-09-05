cask "hackolade" do
  arch arm: "ARM64"

  version "8.4.1"
  sha256 arm:   "657f43dba2b82df0f58f1d81a7ff73b6a5c6ad2b26e9336a0cf48966dac3b9ac",
         intel: "c20284bfa5d5c7a5f252fead5f26236f29c5ea90bac41c53e4be0dbb2273c39d"

  url "https://hackolade.s3.amazonaws.com/previous/v#{version}/Hackolade-mac#{arch}-setup-signed.pkg",
      verified: "hackolade.s3.amazonaws.com/"
  name "Hackolade"
  desc "Polyglot data modelling software"
  homepage "https://hackolade.com/"

  livecheck do
    url "https://hackolade.s3.amazonaws.com/?prefix=previous/&marker=previous/v#{version.major}"
    regex(%r{previous/v?(\d+(?:\.\d+)+)/Hackolade[._-]mac#{arch}[._-]setup[._-]signed\.pkg}i)
    strategy :xml do |xml, regex|
      xml.get_elements("//Contents/Key").map do |item|
        match = item.text&.strip&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  pkg "Hackolade-mac#{arch}-setup-signed.pkg"

  uninstall pkgutil: "com.hackolade.pkg.Hackolade"

  zap trash: [
    "~/Library/Application Support/Hackolade",
    "~/Library/Preferences/com.electron.hackolade.plist",
    "~/Library/Saved Application State/com.electron.hackolade.savedState",
  ]
end
