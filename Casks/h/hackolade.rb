cask "hackolade" do
  arch arm: "ARM64"

  version "8.13.5"
  sha256 arm:   "24215cb2d92f06b4d22c2ce0d28d3e6e46611160c226bcda0b555bc7bd2a8b25",
         intel: "d75bd81ef382f613e7beaf32c2516d25b2b688ada46b15e5951f376a253ba6c1"

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
