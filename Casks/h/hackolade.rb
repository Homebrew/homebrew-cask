cask "hackolade" do
  arch arm: "ARM64"

  version "8.12.11"
  sha256 arm:   "bba0450f17a7de738481d1e25f82ad0797a808897157e4b05665e753dce506e8",
         intel: "86b39d22e4747aee3785e025627fd6b5537572a11584760e9a8321eaca3b5b50"

  url "https://hackolade.s3.amazonaws.com/previous/v#{version}/Hackolade-mac#{arch}-setup-signed.pkg"
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

  depends_on :macos

  pkg "Hackolade-mac#{arch}-setup-signed.pkg"

  uninstall pkgutil: "com.hackolade.pkg.Hackolade"

  zap trash: [
    "~/Library/Application Support/Hackolade",
    "~/Library/Preferences/com.electron.hackolade.plist",
    "~/Library/Saved Application State/com.electron.hackolade.savedState",
  ]
end
