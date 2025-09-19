cask "hackolade" do
  arch arm: "ARM64"

  version "8.4.3"
  sha256 arm:   "10d8936812a6733fe61eb79bafb1fc486bab63aad87e418f7da7347c33904a5b",
         intel: "5c78feb844a341ba83a51f2c3b8ae1aa67edaf71da8de64731be8102069b054f"

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
