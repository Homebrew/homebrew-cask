cask "eid-mw" do
  version "5.0.26"
  sha256 "61312109f3e9525f95f47cf171eeec84c08472b7d898e71ee20737202c3ad592"

  url "https://eid.belgium.be/sites/default/files/software/eID-Quickinstaller-#{version}.dmg"
  name "Belgian EID Middleware"
  desc "E-ID Middleware is the middleware for the Belgian e-id system"
  homepage "https://eid.belgium.be/"

  livecheck do
    url "https://eid.belgium.be/en"
    regex(/href=.*?eID[-_]?Quickinstaller[._-]v?(\d+(?:\.\d+)+)\.dmg/i)

    strategy :page_match do |page, regex|
      download_id = page[%r{element_os-mac-os.*/en/download/(\d+)/license.*?download\s+eID\s+quickinstaller}im, 1]
      next if download_id.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content("https://eid.belgium.be/en/download/#{download_id}/license")
      version_page[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  depends_on macos: ">= :sierra"

  pkg "eID-Quickinstaller-signed.pkg"

  uninstall quit:    ["be.fedict.BEIDToken.BEIDTokenApp", "be.eid.BEIDtoken.app"],
            pkgutil: ["be.eid.middleware", "be.fedict.BEIDToken.BEIDTokenApp", "be.eid.BEIDtoken.app"]
  # No zap stanza required
end
