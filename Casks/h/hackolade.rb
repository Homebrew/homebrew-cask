cask "hackolade" do
  arch arm: "ARM64"

  version "8.3.2"
  sha256 arm:   "ebb5008e12297491ea3f5f8e40e9facfc64e55169fa9142d31a691a1545085bb",
         intel: "ddc0ba7b0dfcfdb6ebcc4eab50c35032dfe73b2e808ccbdde0aa4ebea9b1f2a1"

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
